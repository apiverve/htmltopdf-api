declare module '@apiverve/htmltopdf' {
  export interface htmltopdfOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface htmltopdfResponse {
    status: string;
    error: string | null;
    data: HTMLtoPDFData;
    code?: number;
  }


  interface HTMLtoPDFData {
      marginLeft:   string;
      marginRight:  string;
      marginTop:    string;
      marginBottom: string;
      landscape:    boolean;
      pdfName:      string;
      expires:      number;
      downloadURL:  string;
  }

  export default class htmltopdfWrapper {
    constructor(options: htmltopdfOptions);

    execute(callback: (error: any, data: htmltopdfResponse | null) => void): Promise<htmltopdfResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: htmltopdfResponse | null) => void): Promise<htmltopdfResponse>;
    execute(query?: Record<string, any>): Promise<htmltopdfResponse>;
  }
}
