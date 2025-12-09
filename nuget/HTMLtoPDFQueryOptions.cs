using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.HTMLtoPDF
{
    /// <summary>
    /// Query options for the HTML to PDF API
    /// </summary>
    public class HTMLtoPDFQueryOptions
    {
        /// <summary>
        /// The HTML content to convert to PDF. Ensure that the HTML is escaped properly
        /// </summary>
        [JsonProperty("html")]
        public string Html { get; set; }

        /// <summary>
        /// The top margin of the PDF in inches (e.g., 0.5)
        /// </summary>
        [JsonProperty("marginTop")]
        public string MarginTop { get; set; }

        /// <summary>
        /// The right margin of the PDF in inches (e.g., 0.5)
        /// </summary>
        [JsonProperty("marginRight")]
        public string MarginRight { get; set; }

        /// <summary>
        /// The bottom margin of the PDF in inches (e.g., 0.5)
        /// </summary>
        [JsonProperty("marginBottom")]
        public string MarginBottom { get; set; }

        /// <summary>
        /// The left margin of the PDF in inches (e.g., 0.5)
        /// </summary>
        [JsonProperty("marginLeft")]
        public string MarginLeft { get; set; }
    }
}
