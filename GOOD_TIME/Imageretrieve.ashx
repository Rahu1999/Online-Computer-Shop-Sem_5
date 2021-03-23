<%@ WebHandler Language="C#" Class="Imageretrieve" %>

using System;
using System.Web;

public class Imageretrieve : IHttpHandler {
    System.Data.SqlClient.SqlConnection conn;
    public void ProcessRequest (HttpContext context) {
        conn = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Good_TimesConnectionString2"].ConnectionString);
        conn.Open();

        System.Data.SqlClient.SqlCommand command = new System.Data.SqlClient.SqlCommand("select Image from Products where Product_id=@L_Id", conn);
        System.Data.SqlClient.SqlDataReader dr = command.ExecuteReader();


        command.Parameters.Add("@L_Id", System.Data.SqlDbType.Int).Value = context.Request.QueryString["ID"];

        command.Prepare();
        dr.Read();

        context.Response.BinaryWrite((Byte[])dr["Image"]);
        conn.Close();
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}