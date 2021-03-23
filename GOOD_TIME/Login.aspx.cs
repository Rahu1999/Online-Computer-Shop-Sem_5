using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_Login : System.Web.UI.Page
{

    SqlConnection conn = null;
    SqlCommand cmd = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (txtLoginid.Text == "rahul" && txtPassword.Text == "12345")
        {
            Session["UserName"] = "admin";
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            fnLogin();
        }
    }

    private void fnLogin()
    {

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Good_TimesConnectionString2"].ConnectionString);

        try
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            string query = "select * from customers where UserName=@UserName and Password=@Passd";
            cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@UserName", txtLoginid.Text);
            cmd.Parameters.AddWithValue("@Passd", txtPassword.Text);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Session["UserName"] = Convert.ToString(reader["UserName"]);
                }
                Label6.Visible = false;
                Response.Redirect("All_Computers.aspx");
            }
            else
            {
                Label6.Visible = true;
                Label6.Text = "You entered either wrong username or password";
                txtPassword.Text = string.Empty;
            }
        }

        catch (Exception ex)
        {
        }
        finally
        {
            if (conn.State == ConnectionState.Open)
            {

                conn.Close();
            }
        }
    }

     protected void btnSignUp_Click(object sender, EventArgs e)
    {

        if ((txtLoginid.Text.Equals("") || txtLoginid.Text == null) && (txtPassword.Text.Equals("") || txtPassword.Text == null))
        {
            Response.Redirect("../SignUp.aspx");
        }

    }
     protected void txtLoginid_TextChanged(object sender, EventArgs e)
     {

     }
     protected void txtPassword_TextChanged(object sender, EventArgs e)
     {

     }
}

