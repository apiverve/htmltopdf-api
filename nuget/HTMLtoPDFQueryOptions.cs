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

        /// <summary>
        /// Paper size
        /// </summary>
        [JsonProperty("format")]
        public string Format { get; set; }

        /// <summary>
        /// Zoom applied to the page content, 0.1 to 2
        /// </summary>
        [JsonProperty("scale")]
        public double? Scale { get; set; }

        /// <summary>
        /// Print background colours and images; set false for an ink-saving document
        /// </summary>
        [JsonProperty("printBackground")]
        public bool? PrintBackground { get; set; }

        /// <summary>
        /// Only these pages, e.g. 1-3, 5
        /// </summary>
        [JsonProperty("pageRanges")]
        public string PageRanges { get; set; }

        /// <summary>
        /// HTML printed at the top of every page. Spans with class pageNumber, totalPages, date, title or url are filled in. Use inline styles with a font-size (Chromium defaults to a tiny font) and leave room with marginTop
        /// </summary>
        [JsonProperty("headerTemplate")]
        public string HeaderTemplate { get; set; }

        /// <summary>
        /// HTML printed at the bottom of every page, with the same placeholders as headerTemplate, e.g. <span class="pageNumber"></span> of <span class="totalPages"></span>
        /// </summary>
        [JsonProperty("footerTemplate")]
        public string FooterTemplate { get; set; }
    }
}
