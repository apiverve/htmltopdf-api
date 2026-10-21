# HTML to PDF API - Ruby Gem

This HTML to PDF API renders raw HTML markup into downloadable PDF files. Send your escaped HTML string to receive a signed download link, an expiration timestamp, and the generated document filename.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_htmltopdf'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_htmltopdf
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_htmltopdf'

# Initialize the client
client = APIVerve::Htmltopdf::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  marginTop: 0.4,
  marginBottom: 0.4,
  marginLeft: 0.4,
  marginRight: 0.4,
  landscape: false,
  html: "<!doctype html> <html>  <head> <title>This is the title of the webpage!</title> </head> <body> <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p> </body> </html>"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ marginTop: 0.4, marginBottom: 0.4, marginLeft: 0.4, marginRight: 0.4, landscape: false, html: "<!doctype html> <html>  <head> <title>This is the title of the webpage!</title> </head> <body> <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p> </body> </html>" })
  puts response["data"]
rescue APIVerve::Htmltopdf::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Htmltopdf::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Htmltopdf::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/htmltopdf?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/htmltopdf?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/htmltopdf?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
