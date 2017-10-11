<%@ WebHandler Language="C#" Class="Area" %>

using System;
using System.Web;
using System.Xml;
using System.Text;

public class Area : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "application/json";
        string action = context.Request.Params["action"];
        string param = context.Request.Params["param"];
        string[] paramss = { string.Empty, string.Empty };
        if (param != string.Empty)
        {
            paramss = param.Split(',');
        }
        string result = string.Empty;
        if (action == "province")
        {
            if (paramss[1] == string.Empty)
            {
                result = GetProvince();
            }
            else if (paramss[1] == "c")
            {
                result = GetCity(HttpUtility.UrlDecode(paramss[0], Encoding.GetEncoding("utf-8")));
            }
            else
            {
                result = GetArea(HttpUtility.UrlDecode(paramss[0], Encoding.GetEncoding("utf-8")));
            }
        }
        context.Response.Write(result);
        context.Response.End();
    }


    private string GetProvince()
    {
        XmlDocument doc = new XmlDocument();
        GetXmlDocumnet(doc);
        XmlNodeList lists = doc.SelectNodes(@"/address/province");
        string provinceJson = GetXmlToJson(lists);
        return provinceJson;
    }

    private string GetCity(string provname)
    {
        XmlDocument doc = new XmlDocument();
        GetXmlDocumnet(doc);
        string xpath = string.Format("/address/province[@name='{0}']/city", provname);//要研究
        XmlNodeList lists = doc.SelectNodes(xpath);
        string cityJson = GetXmlToJson(lists);
        return cityJson;
    }

    private string GetArea(string cityname)
    {
        XmlDocument doc = new XmlDocument();
        GetXmlDocumnet(doc);
        string xpath = string.Format("/address/province/city[@name='{0}']/country", cityname);
        XmlNodeList lists = doc.SelectNodes(xpath);
        string cityJson = GetXmlToJson(lists);
        return cityJson;
    }


    private void GetXmlDocumnet(XmlDocument doc)
    {
        string path = HttpContext.Current.Server.MapPath("./xml/Area.xml");
        doc.Load(path);
    }


    private string GetXmlToJson(XmlNodeList nodeList)
    {
        try
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            if (nodeList != null)
            {
                sb.Append("[");
                foreach (XmlNode node in nodeList)
                {
                    sb.Append("{\"name\":\"" + node.Attributes["name"].InnerText + "\"},");
                }
                sb.Remove(sb.Length - 1, 1);
                sb.Append("]");
            }
            return sb.ToString();
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}