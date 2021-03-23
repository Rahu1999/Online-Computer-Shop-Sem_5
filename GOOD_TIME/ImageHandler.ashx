<%@ WebHandler Language="C#" Class="ImageHandler" %>

using System;
using System.Web;

public class ImageHandler : IHttpHandler {
    System.Data.SqlClient.SqlConnection conn;
    public void ProcessRequest (HttpContext context) {
        string imageid = context.Request.QueryString["ImID"];
        conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Good_TimesConnectionString2"].ConnectionString);

        conn.Open();
        System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand("select Image from Products where Product_id=" + imageid, conn);
        System.Data.SqlClient.SqlDataReader dr = command.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((Byte[])dr[0]);
        conn.Close();
        context.Response.End();
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}