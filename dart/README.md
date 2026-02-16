# HTML to PDF API - Dart/Flutter Client

HTML to PDF is a simple tool for converting HTML to PDF. It returns the PDF file generated from the HTML.

[![pub package](https://img.shields.io/pub/v/apiverve_htmltopdf.svg)](https://pub.dev/packages/apiverve_htmltopdf)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [HTML to PDF API](https://htmltopdf.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_htmltopdf: ^1.1.14
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
    "pdfName": "79839521-e5b1-4789-b64e-c09e53d8aa87.pdf",
    "expires": 1740259885006,
    "downloadURL": "https://storage.googleapis.com/apiverve-helpers.appspot.com/htmltopdf/79839521-e5b1-4789-b64e-c09e53d8aa87.pdf?GoogleAccessId=1089020767582-compute%40developer.gserviceaccount.com&Expires=1740259885&Signature=gy9lXWJrXa4Cl3FtQLWezeRWZpf84z3tjxOYd44h2rcRACXBIRtrD%2BzKdIyn1x3vfLtO2rZnKMZx%2Fe%2Bg1Q3EAxPxWkNR9HeNxcKWA3rg45%2FWHjix0C97ud583pNb5OBlcqGmHq%2Fdu6HsEOTfUjSez%2Fml56IrgNsCKfHBWItkmHf%2FABS5u7Ji600tiIKcf2ddpKulkF1%2Fc59mPpwqNbjIbjUua9kjtcMRVAsuYSZ7hZPq1PhAMAbSl7ClPTStIi7dcWHUq%2BjO7rDDcL9l2qXCFuZgMmr0HrTr%2FD0%2BtHjyQP6rzYCldrcV0Ap4t3acQiQXSVnOAUxuGbhi9Mp90z1PGA%3D%3D"
  }
}
```

## API Reference

- **API Home:** [HTML to PDF API](https://htmltopdf.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/htmltopdf](https://docs.apiverve.com/ref/htmltopdf?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
