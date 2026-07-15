/**
 * HTML to PDF API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the HTML to PDF API.
 * API Documentation: https://docs.apiverve.com/ref/htmltopdf
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/htmltopdf';

/**
 * Make a POST request to the HTML to PDF API
 */
async function callHTMLtoPDFAPI() {
  try {
    // Request body
    const requestBody &#x3D; {
    &quot;marginTop&quot;: 0.4,
    &quot;marginBottom&quot;: 0.4,
    &quot;marginLeft&quot;: 0.4,
    &quot;marginRight&quot;: 0.4,
    &quot;landscape&quot;: false,
    &quot;html&quot;: &quot;&lt;!doctype html&gt; &lt;html&gt;  &lt;head&gt; &lt;title&gt;This is the title of the webpage!&lt;/title&gt; &lt;/head&gt; &lt;body&gt; &lt;p&gt;This is an example paragraph. Anything in the &lt;strong&gt;body&lt;/strong&gt; tag will appear on the page, just like this &lt;strong&gt;p&lt;/strong&gt; tag and its contents.&lt;/p&gt; &lt;/body&gt; &lt;/html&gt;&quot;
};

    const response = await fetch(API_URL, {
      method: 'POST',
      headers: {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(requestBody)
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callHTMLtoPDFAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
