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
        public double? MarginTop { get; set; }

        /// <summary>
        /// The right margin of the PDF in inches (e.g., 0.5)
        /// </summary>
        [JsonProperty("marginRight")]
        public double? MarginRight { get; set; }

        /// <summary>
        /// The bottom margin of the PDF in inches (e.g., 0.5)
        /// </summary>
        [JsonProperty("marginBottom")]
        public double? MarginBottom { get; set; }

        /// <summary>
        /// The left margin of the PDF in inches (e.g., 0.5)
        /// </summary>
        [JsonProperty("marginLeft")]
        public double? MarginLeft { get; set; }

        /// <summary>
        /// Set to true for landscape orientation
        /// </summary>
        [JsonProperty("landscape")]
        public bool? Landscape { get; set; }
    }
}
