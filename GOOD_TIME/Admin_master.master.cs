using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_product_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddProducts.aspx");
    }
    protected void log_out_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Session.Abandon();
        Response.Redirect("HomePage.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHome.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Updates.aspx");
    }
    protected void btnAllWATCH_Click(object sender, EventArgs e)
    {
        Response.Redirect("All_Computers.aspx");
    }
}
