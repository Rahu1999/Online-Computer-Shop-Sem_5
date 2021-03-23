using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Booking : System.Web.UI.Page
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
        GetSingleProduct();
    }
    private void GetSingleProduct()
    {


        string strID = Request.QueryString["id"];
        string strName = Request.QueryString["name"];

        //string strLocation = Request.QueryString["spec"];
        string strprice = Request.QueryString["price"];

        //Label6.lineBreakMode = UILineBreakModeWordWrap;
        //Label6.numberOfLines = 5; //Or whatever you want
        Label4.Text = strID;
        Label2.Text = strName;
        //TextBox1.Text = strLocation;
        Label10.Text = strprice;
        Image1.ImageUrl = "~/ImageHandler.ashx?ImID=" + strID;
    }


    protected void btnbook_Click(object sender, EventArgs e)
    {
        Session["cid"] = Label4.Text;
        Session["cname"] = Label2.Text;
        //Session["cspec"] = TextBox1.Text;
        Session["cprice"] = Label10.Text;
        Session["Fname"] = TextBoxfn.Text;
        Session["Lname"] = TextBoxln.Text;
        Session["Dplace"] = TextBoxdplace.Text;
        Session["Contact"] = TextBoxcontact.Text;

        Response.Redirect("Varify.aspx");
    }
}