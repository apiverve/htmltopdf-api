# HTML to PDF API - PHP Package

HTML to PDF is a simple tool for converting HTML to PDF. It returns the PDF file generated from the HTML.

## Installation

Install via Composer:

```bash
composer require apiverve/htmltopdf
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Htmltopdf\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'marginTop' => 0.4,
    'marginBottom' => 0.4,
    'marginLeft' => 0.4,
    'marginRight' => 0.4,
    'landscape' => false,
    'html' => '<!doctype html> <html>  <head> <title>This is the title of the webpage!</title> </head> <body> <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p> </body> </html>'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Htmltopdf\Client;
use APIVerve\Htmltopdf\Exceptions\APIException;
use APIVerve\Htmltopdf\Exceptions\ValidationException;

try {
    $response = $client->execute(['marginTop' => 0.4, 'marginBottom' => 0.4, 'marginLeft' => 0.4, 'marginRight' => 0.4, 'landscape' => false, 'html' => '<!doctype html> <html>  <head> <title>This is the title of the webpage!</title> </head> <body> <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p> </body> </html>']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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
    "pdfName": "c064eacc-c29f-43a1-8375-a4b2562ea9d8.pdf",
    "expires": 1766096665366,
    "downloadURL": "https://storage.googleapis.com/apiverve-helpers.appspot.com/htmltopdf/c064eacc-c29f-43a1-8375-a4b2562ea9d8.pdf?GoogleAccessId=1089020767582-compute%40developer.gserviceaccount.com&Expires=1766096665&Signature=R%2Ft%2FXcR%2B8bXzCi5ztc01YeE%2Bbn1ZR%2BCyeoqgHpSB1z0LO3SetOSoWYVoon5IG4vUU9W30Rmw6owErorZal%2FHdgpmcPAYx3eTx5dPaD45tFSCgIfpRloi0DBLse%2Fzy4sb0k3XgweiHZUdZu3jKMi1HVDJa2j2ervAFfwDfxGHUDXH5wwFKqnv%2BIw%2Fu7MBsKMDCNMWYESE7Aicz6eL0Lxz8P6oazJX0akKlLDhkgKiIqF3VtjGIh36RzK4WGBpU36JFZ7SCZZGHNiHyt3%2FBdyjPRA8N1fky%2Bv%2BjR%2BTTlO9BpWcjImNJM6nvVfmICEfcbLqL2MvVldfPAFKyEv2zCrCLA%3D%3D"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/htmltopdf?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://htmltopdf.apiverve.com?utm_source=php&utm_medium=readme](https://htmltopdf.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
