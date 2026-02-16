/// Response models for the HTML to PDF API.

/// API Response wrapper.
class HtmltopdfResponse {
  final String status;
  final dynamic error;
  final HtmltopdfData? data;

  HtmltopdfResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HtmltopdfResponse.fromJson(Map<String, dynamic> json) => HtmltopdfResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HtmltopdfData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the HTML to PDF API.

class HtmltopdfData {
  String? marginLeft;
  String? marginRight;
  String? marginTop;
  String? marginBottom;
  bool? landscape;
  String? pdfName;
  int? expires;
  String? downloadURL;

  HtmltopdfData({
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.marginBottom,
    this.landscape,
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
      pdfName: json['pdfName'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
    );
}

class HtmltopdfRequest {
  double? marginTop;
  double? marginBottom;
  double? marginLeft;
  double? marginRight;
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
