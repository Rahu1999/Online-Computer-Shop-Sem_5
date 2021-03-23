<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="admin_Login" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 21px;
        }
        .style3
        {
            height: 76px;
        }
        .style4
        {
            width: 34%;
            height: 76px;
        }
        .style5
        {
            height: 76px;
            color: #FFFFFF;
        }
        .style6
        {
            color: #FFFFFF;
            font-size: large;
        }
        .style7
        {
            color: #FFFFFF;
            font-weight: bold;
        }
    </style>
</head>
<body style="background-image:url(images/22.png) ; height: 500px;" /> 


   
    <form id="form1" runat="server">
    
        
    <table align="center" 
        style="width: 401px; height: 340px; margin-top: 106px; margin-left: 403px;">
        <tr>
            <td align="center" colspan="2" bgcolor="#993333" 
                style="border: medium groove #FFFFFF;" class="style7">
                   LOGIN</td>
        </tr>

        <tr>
            <td align="center" style="border: medium groove #FFFFFF;" 
                bgcolor="#993333" class="style5">
                <strong>USERNAME&nbsp; :</strong> 
            </td>
            <td bgcolor="#993333" class="style4" style="border: medium groove #FFFFFF">
                <asp:textbox ID="txtLoginid" runat="server" Height="55px" Width="243px" 
                    ontextchanged="txtLoginid_TextChanged"></asp:textbox>
                    
                     <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtLoginid" Display="Dynamic"
                ErrorMessage="Please enter LoginId" ForeColor=Red></asp:RequiredFieldValidator>

                    
            </td>
        </tr>

        <tr>
            <td align="center" style="border: medium groove #FFFFFF;" 
                bgcolor="#993333" class="style3">
                <span class="style6"><strong>Password&nbsp; :</strong></span>
            </td>
            <td bgcolor="#993333" class="style4" style="border: medium groove #FFFFFF">
                <asp:textbox ID="txtPassword" runat="server" TextMode="Password" Height="58px" 
                    Width="244px" ontextchanged="txtPassword_TextChanged"></asp:textbox>
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtPassword" Display="Dynamic"
                ErrorMessage="Please enter password" ForeColor=Red></asp:RequiredFieldValidator>

                   
                    
            </td>
        </tr>

        <tr>
            
            
            <td colspan="2" bgcolor="#993333" style="border: medium groove #FFFFFF" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogin" runat="server" onclick="Button1_Click" 
                    Text="Login" BackColor="White" ForeColor="#0099FF" Height="40px" 
                    style="margin-left: 0px; color: #808080; font-weight: 700;" Width="97px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
                 &nbsp;&nbsp;<asp:Button ID="btnSignUp" runat="server" CausesValidation="False" 
                    onclick="btnSignUp_Click" PostBackUrl="~/SignUp.aspx" Text="SignUp" 
                    BackColor="White" Font-Bold="True" ForeColor="#00CCFF" Height="40px" 
                    style="margin-top: 0px; color: #808080; margin-left: 0px;" Width="107px" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                &nbsp;
                 
                 </td>
              <tr> <td colspan="2" bgcolor="Silver" class="style2" 
                      style="border: medium groove #FFFFFF"><asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label></td></tr>
            </tr>
        </table>
    </form>
    </body>
    </htmml>