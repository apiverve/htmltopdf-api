HTML to PDF API
============

HTML to PDF is a simple tool for converting HTML to PDF. It returns the PDF file generated from the HTML.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [HTML to PDF API](https://apiverve.com/marketplace/api/htmltopdf)

---

## Installation
	pip install apiverve-htmltopdf

---

## Configuration

Before using the htmltopdf API client, you have to setup your account and obtain your API Key.  
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Usage

The HTML to PDF API documentation is found here: [https://docs.apiverve.com/api/htmltopdf](https://docs.apiverve.com/api/htmltopdf).  
You can find parameters, example responses, and status codes documented here.

### Setup

```
# Import the client module
from apiverve_htmltopdf.apiClient import HtmltopdfAPIClient

# Initialize the client with your APIVerve API key
api = HtmltopdfAPIClient("[YOUR_API_KEY]")
```

---


### Perform Request
Using the API client, you can perform requests to the API.

###### Define Query

```
query = { "marginTop": 0.4, "marginBottom": 0.4, "marginLeft": 0.4, "marginRight": 0.4, "landscape": false, "html": "<!doctype html> <html> <head> <title>This is the title of the webpage!</title> </head> <body> <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p> </body> </html>" }
```

###### Simple Request

```
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```
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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.