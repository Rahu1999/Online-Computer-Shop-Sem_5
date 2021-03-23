<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Sign_Up" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 66%;
        }
        .style2
        {
            width: 40%;
            margin-left: 40px;
        }
        .style3
        {
            height: 64px;
        }
        .style4
        {
            width: 66%;
            color: #FFFFFF;
        }
        .style5
        {
            width: 66%;
            color: #FFFFFF;
            font-size: large;
        }
        .style6
        {
            color: #FFFFFF;
            font-size: large;
        }
    </style>
</head>
<body style="background-image:url(images/4.png); height: 700px; ">  
    <form id="form1" runat="server">
&nbsp;<table align="center" 
        
        
        
        style="width: 460px; height: 358px; margin-left: 346px; margin-top: 18px; margin-bottom: 0px;">
   

   <tr>
            <td align="center" style="border-style: groove; border-color: #FFFFFF; color: #FFFFFF;" 
               bgcolor="#993333" class="style1">
                <strong style="font-size: large">First Name&nbsp; :&nbsp;&nbsp; 
            </strong> 
            </td>
            <td bgcolor="#993333" class="style2" 
                style="border-style: groove; border-color: #FFFFFF">
                <asp:textbox ID="txtfn" runat="server" Height="55px" Width="241px"></asp:textbox>

                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtfn" Display="Dynamic"
                ErrorMessage="Please enter the first name" ForeColor=Red></asp:RequiredFieldValidator>
            </td>
        </tr>
    <tr>
            <td align="center" style="border-style: groove; border-color: #FFFFFF;" 
                bgcolor="#993333" class="style5">
                <strong>Last Name&nbsp; : 
            </strong> 
            </td>
            <td bgcolor="#993333" class="style2" 
                style="border-style: groove; border-color: #FFFFFF">
                <asp:textbox ID="txtln" runat="server" Height="55px" Width="243px"></asp:textbox>

                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtln" Display="Dynamic"
                ErrorMessage="Please enter the last name" ForeColor=Red></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="border-style: groove; border-color: #FFFFFF;" 
                bgcolor="#993333" class="style4">
                <strong>USERNAME&nbsp; : 
            </strong> 
            </td>
            <td bgcolor="#993333" class="style2" 
                style="border-style: groove; border-color: #FFFFFF">
                <asp:textbox ID="txtLoginid" runat="server" Height="55px" Width="243px"></asp:textbox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtLoginid" Display="Dynamic"
                ErrorMessage="Please enter email address" ForeColor=Red></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td align="center" style="border-style: groove; border-color: #FFFFFF;" 
                bgcolor="#993333" class="style5">
                <strong>Password :&nbsp;
            </strong>
            </td>
            <td bgcolor="#993333" class="style2" 
                style="border-style: groove; border-color: #FFFFFF">
                <asp:textbox ID="txtpw" runat="server" Height="55px" Width="243px" 
                    TextMode="Password"></asp:textbox>

                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtpw" Display="Dynamic"
                ErrorMessage="Please enter password" ForeColor=Red></asp:RequiredFieldValidator>



            </td>
        </tr>
        <tr>
            <td align="center" style="border-style: groove; border-color: #FFFFFF;" 
                bgcolor="#993333" class="style1">
                <span class="style6"><strong>Confirm Password&nbsp; :</strong></span> 
            </td>
            <td bgcolor="#993333" class="style2" 
                style="border-style: groove; border-color: #FFFFFF">
                <asp:textbox ID="txtcp" runat="server" Height="55px" Width="243px" 
                    TextMode="Password"></asp:textbox>

                    
                    <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpw" ControlToValidate="txtcp" 
                    ErrorMessage="Password does not matches"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtcp" Display="Dynamic"
                ErrorMessage="Please enter Confirm password" ForeColor=Red></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
        <td colspan="2" bgcolor="#993333" align="center" class="style3" 
                style="border-style: groove; border-color: #FFFFFF" >


                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="font-weight: 700; margin-left: 0px; color: #666666;" Text="Sign Up" 
                BackColor="White" BorderColor="#66FF33" ForeColor="#0099FF" Height="59px" 
                Width="136px" />

        </td>
        </tr>
</table>
</form>
</body>
                

</html>
