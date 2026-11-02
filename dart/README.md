# HTML to PDF API - Dart/Flutter Client

This HTML to PDF API renders raw HTML markup into downloadable PDF files. Send your escaped HTML string to receive a signed download link, an expiration timestamp, and the generated document filename.

[![pub package](https://img.shields.io/pub/v/apiverve_htmltopdf.svg)](https://pub.dev/packages/apiverve_htmltopdf)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [HTML to PDF API](https://apiverve.com/marketplace/htmltopdf?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_htmltopdf: ^1.2.4
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_htmltopdf/apiverve_htmltopdf.dart';

void main() async {
  final client = HtmltopdfClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'marginTop': 0.4,
      'marginBottom': 0.4,
      'marginLeft': 0.4,
      'marginRight': 0.4,
      'landscape': false,
      'html': '<!doctype html> <html>  <head> <title>This is the title of the webpage!</title> </head> <body> <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p> </body> </html>'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "marginLeft": "0.4in",
    "marginRight": "0.4in",
    "marginTop": "0.4in",
    "marginBottom": "0.4in",
    "landscape": false,
    "format": "A4",
    "scale": 1,
    "pageCount": 1,
    "pdfName": "c064eacc-c29f-43a1-8375-a4b2562ea9d8.pdf",
    "expires": 1766096665366,
    "downloadURL": "https://storage.googleapis.com/apiverve-helpers.appspot.com/htmltopdf/c064eacc-c29f-43a1-8375-a4b2562ea9d8.pdf?GoogleAccessId=1089020767582-compute%40developer.gserviceaccount.com&Expires=1766096665&Signature=R%2Ft%2FXcR%2B8bXzCi5ztc01YeE%2Bbn1ZR%2BCyeoqgHpSB1z0LO3SetOSoWYVoon5IG4vUU9W30Rmw6owErorZal%2FHdgpmcPAYx3eTx5dPaD45tFSCgIfpRloi0DBLse%2Fzy4sb0k3XgweiHZUdZu3jKMi1HVDJa2j2ervAFfwDfxGHUDXH5wwFKqnv%2BIw%2Fu7MBsKMDCNMWYESE7Aicz6eL0Lxz8P6oazJX0akKlLDhkgKiIqF3VtjGIh36RzK4WGBpU36JFZ7SCZZGHNiHyt3%2FBdyjPRA8N1fky%2Bv%2BjR%2BTTlO9BpWcjImNJM6nvVfmICEfcbLqL2MvVldfPAFKyEv2zCrCLA%3D%3D"
  }
}
```

## API Reference

- **API Home:** [HTML to PDF API](https://apiverve.com/marketplace/htmltopdf?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/htmltopdf](https://docs.apiverve.com/ref/htmltopdf?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
