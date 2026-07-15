declare module '@apiverve/htmltopdf' {
  export interface htmltopdfOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface htmltopdfResponse {
    status: string;
    error: string | null;
    data: HTMLtoPDFData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface HTMLtoPDFData {
      marginLeft:   null | string;
      marginRight:  null | string;
      marginTop:    null | string;
      marginBottom: null | string;
      landscape:    boolean | null;
      pdfName:      null | string;
      expires:      number | null;
      downloadURL:  null | string;
  }

  export default class htmltopdfWrapper {
    constructor(options: htmltopdfOptions);

    execute(callback: (error: any, data: htmltopdfResponse | null) => void): Promise<htmltopdfResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: htmltopdfResponse | null) => void): Promise<htmltopdfResponse>;
    execute(query?: Record<string, any>): Promise<htmltopdfResponse>;
  }
}
