using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class All_Watches : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null && Session["UserName"] != string.Empty)
        {

            // Response.Redirect("Booking.aspx");
        }
        else
        {

            Response.Redirect("Login.aspx");
        }

    }
}