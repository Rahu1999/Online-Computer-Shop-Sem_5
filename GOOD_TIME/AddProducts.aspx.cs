using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class admin_add_product : System.Web.UI.Page
{
    SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["Good_TimesConnectionString"].ConnectionString);

    SqlConnection conn = null;
    SqlCommand cmd = null;
    SqlDataAdapter da;
    DataSet ds;
    DataView dv;
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    
    protected void Button7_Click(object sender, EventArgs e)
    {
 
        if (f1.PostedFile != null && f1.PostedFile.FileName != "")
        {
            byte[] myimage = new byte[f1.PostedFile.ContentLength];
            HttpPostedFile Image = f1.PostedFile;
            Image.InputStream.Read(myimage, 0, (int)f1.PostedFile.ContentLength);
            connect.Open();

            //string builder is used to manipulate the string data
            StringBuilder sb = new StringBuilder();
            //assign text to string builder in order to manipulate it
            //sb.Append(td.Text);
            // \r\n  represents carriage return or newline
            //sb.Replace("\r\n", "<br/>");
            // now store sb in database
            // Response.Write(sb);

            string sql = "Insert into Products(Image,Price,WatchName) values(@Image,@Price,@WatchName)";
            cmd = new SqlCommand(sql, connect);
            cmd.Parameters.AddWithValue("@Image", myimage);
            cmd.Parameters.AddWithValue("@Price", tp.Text);
            cmd.Parameters.AddWithValue("@watchName", watchname.Text);

            //cmd.Parameters.Add("@status", SqlDbType.VarChar, 50).Value = DropDownList1.Text;
            cmd.Connection = connect;

            cmd.ExecuteNonQuery();

            Labelmsg.Visible = true;
            Labelmsg.Text = "<script>alert(product successfully added)</script>";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('product successfully added');", true);
            connect.Close();

        }

        else
        {
            Labelmsg.Visible = true;
            Labelmsg.Text = "product update failed";

        }


    }
    protected void  b2_Click(object sender, EventArgs e)
    {
        watchname.Text = "";
        tp.Text = "";

    }
}
    

