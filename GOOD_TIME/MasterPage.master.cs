using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null && Session["UserName"] != string.Empty)
        {
            Button6.Visible = false;
            lgout.Visible = true;
            

        }
        else
        {
            lgout.Visible = false;
            Button6.Visible = true;
        }

    }
  
 
    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Remove("UserName");
        Response.Redirect("HomePage.aspx");
    }

    protected void btnall_watches(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("contactus.aspx");
    }
}
