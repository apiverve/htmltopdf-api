# HTML to PDF API

HTML to PDF is a simple tool for converting HTML to PDF. It returns the PDF file generated from the HTML.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/htmltopdf.svg)](https://www.npmjs.com/package/@apiverve/htmltopdf)

This is a Javascript Wrapper for the [HTML to PDF API](https://htmltopdf.apiverve.com?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/htmltopdf
```

Using yarn:
```shell
yarn add @apiverve/htmltopdf
```

---

## Configuration

Before using the HTML to PDF API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The HTML to PDF API documentation is found here: [https://docs.apiverve.com/ref/htmltopdf](https://docs.apiverve.com/ref/htmltopdf?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const htmltopdfAPI = require('@apiverve/htmltopdf');
const api = new htmltopdfAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  "marginTop": 0.4,
  "marginBottom": 0.4,
  "marginLeft": 0.4,
  "marginRight": 0.4,
  "landscape": false,
  "html": "<!doctype html> <html>  <head> <title>This is the title of the webpage!</title> </head> <body> <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p> </body> </html>"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  "marginTop": 0.4,
  "marginBottom": 0.4,
  "marginLeft": 0.4,
  "marginRight": 0.4,
  "landscape": false,
  "html": "<!doctype html> <html>  <head> <title>This is the title of the webpage!</title> </head> <body> <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p> </body> </html>"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  "marginTop": 0.4,
  "marginBottom": 0.4,
  "marginLeft": 0.4,
  "marginRight": 0.4,
  "landscape": false,
  "html": "<!doctype html> <html>  <head> <title>This is the title of the webpage!</title> </head> <body> <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p> </body> </html>"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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
    "pdfName": "79839521-e5b1-4789-b64e-c09e53d8aa87.pdf",
    "expires": 1740259885006,
    "downloadURL": "https://storage.googleapis.com/apiverve-helpers.appspot.com/htmltopdf/79839521-e5b1-4789-b64e-c09e53d8aa87.pdf?GoogleAccessId=1089020767582-compute%40developer.gserviceaccount.com&Expires=1740259885&Signature=gy9lXWJrXa4Cl3FtQLWezeRWZpf84z3tjxOYd44h2rcRACXBIRtrD%2BzKdIyn1x3vfLtO2rZnKMZx%2Fe%2Bg1Q3EAxPxWkNR9HeNxcKWA3rg45%2FWHjix0C97ud583pNb5OBlcqGmHq%2Fdu6HsEOTfUjSez%2Fml56IrgNsCKfHBWItkmHf%2FABS5u7Ji600tiIKcf2ddpKulkF1%2Fc59mPpwqNbjIbjUua9kjtcMRVAsuYSZ7hZPq1PhAMAbSl7ClPTStIi7dcWHUq%2BjO7rDDcL9l2qXCFuZgMmr0HrTr%2FD0%2BtHjyQP6rzYCldrcV0Ap4t3acQiQXSVnOAUxuGbhi9Mp90z1PGA%3D%3D"
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
