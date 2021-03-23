using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;
public partial class Sign_Up : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = @"Data Source=DESKTOP-POSD9BE\SQLEXPRESS;Initial Catalog=rahul;Integrated Security=True;";

        string sqlQuery = "select * from alogin where LOGINID='" + txtLoginid.Text + "'";
        SqlDataAdapter ad = new SqlDataAdapter(sqlQuery, constr);
        DataSet ds = new DataSet();
        ad.Fill(ds, "alogin");


        if (ds.Tables[0].Rows.Count == 0)
        {
            sqlQuery = "insert into alogin values('" + txtLoginid.Text + "','" + txtpw.Text + "')";
            try
            {
                using (SqlConnection SQL = new SqlConnection(constr))
                {
                    SqlCommand CMD = new SqlCommand(sqlQuery, SQL);
                    CMD.Connection.Open();
                    CMD.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            sqlQuery = "insert into customers values('" + txtfn.Text + "' ,'" + txtln.Text + "','" + txtLoginid.Text + "','" + txtpw.Text + "')";

            try
            {
                using (SqlConnection SQL = new SqlConnection(constr))
                {
                    SqlCommand CMD = new SqlCommand(sqlQuery, SQL);
                    CMD.Connection.Open();
                    CMD.ExecuteNonQuery();
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            Response.Redirect("~/HomePage.aspx");


        }
        else
            Response.Write("user already exist");
    }
   
}
