/// Response models for the HTML to PDF API.

/// API Response wrapper.
class HtmltopdfResponse {
  final String status;
  final dynamic error;
  final HtmltopdfData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HtmltopdfResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HtmltopdfResponse.fromJson(Map<String, dynamic> json) => HtmltopdfResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HtmltopdfData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the HTML to PDF API.

class HtmltopdfData {
  String? marginLeft;
  String? marginRight;
  String? marginTop;
  String? marginBottom;
  bool? landscape;
  String? format;
  num? scale;
  num? pageCount;
  String? pdfName;
  num? expires;
  String? downloadURL;

  HtmltopdfData({
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.marginBottom,
    this.landscape,
    this.format,
    this.scale,
    this.pageCount,
    this.pdfName,
    this.expires,
    this.downloadURL,
  });

  factory HtmltopdfData.fromJson(Map<String, dynamic> json) => HtmltopdfData(
      marginLeft: json['marginLeft'],
      marginRight: json['marginRight'],
      marginTop: json['marginTop'],
      marginBottom: json['marginBottom'],
      landscape: json['landscape'],
      format: json['format'],
      scale: json['scale'],
      pageCount: json['pageCount'],
      pdfName: json['pdfName'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
    );
}

class HtmltopdfRequest {
  num? marginTop;
  num? marginBottom;
  num? marginLeft;
  num? marginRight;
  bool? landscape;
  String html;

  HtmltopdfRequest({
    this.marginTop,
    this.marginBottom,
    this.marginLeft,
    this.marginRight,
    this.landscape,
    required this.html,
  });

  Map<String, dynamic> toJson() => {
      if (marginTop != null) 'marginTop': marginTop,
      if (marginBottom != null) 'marginBottom': marginBottom,
      if (marginLeft != null) 'marginLeft': marginLeft,
      if (marginRight != null) 'marginRight': marginRight,
      if (landscape != null) 'landscape': landscape,
      'html': html,
    };
}
