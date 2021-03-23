<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:300px; height:200px;position: absolute;left: 38%; top: 333px;">

    <asp:Image ID="Image1" runat="server" 
                                Height="200px" Width="300px" />
      </div>
    <table class="style10" 
        style="position: absolute;left: 44%; height: 217px; font-size: 16px; top: 562px;">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Watch Name :" ForeColor="Black"></asp:Label>
            </td>
            <td class="style7">
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name")  %>' ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="Label3" runat="server" Text="Product no. :" ForeColor="Black"></asp:Label>
            </td>
            <td class="style7">
                <asp:Label ID="Label4" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    
        <tr>
            <td class="style11">
                <asp:Label ID="Label9" runat="server" Text="Price :" ForeColor="Black"></asp:Label>
            </td>
            <td class="style7">
                <asp:Label ID="Label10" runat="server" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        
        
    </table>
     <table 
        
        
        
        style=" position: absolute;left: 26%; height: 286px;width:60%; font-size: 16px; top: 800px;">
        <tr>
            <td  class="style24">
                <asp:Label ID="Label12" runat="server" Text="First Name :" ForeColor="Black" ></asp:Label> </td>              
            <td class="style17">
                <asp:TextBox ID="TextBoxfn" runat="server" Font-Bold="True" 
                    Font-Size="16pt" Height="28px" Width="143px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxfn" ErrorMessage="Please enter the First name">*</asp:RequiredFieldValidator>
            </td>
            
           
        </tr>
      
        <tr>
            <td  class="style25">
                <asp:Label ID="Label13" runat="server" Text="Last Name :" ForeColor="Black"></asp:Label>
            </td>
            <td class="style27">
                <asp:TextBox ID="TextBoxdplace" runat="server" Font-Size="16pt" Height="28px" 
                    Width="143px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBoxdplace" ErrorMessage="Please enter delivery place">*</asp:RequiredFieldValidator>
            </td>
            <td class="style31">
                &nbsp;</td>
            <td class="style22">
                &nbsp;</td>
           
        </tr>
        <tr>
            <td class="style25">
               <asp:Label ID="Label14" runat="server" Text="Contact no. :" ForeColor="Black"></asp:Label></td>
            <td class="style28">
                <asp:TextBox ID="TextBoxcontact" runat="server" Font-Bold="True" 
                    Font-Size="16pt" Height="28px" Width="143px"></asp:TextBox>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxcontact" ErrorMessage="Please enter contact no." ForeColor="Red">*</asp:RequiredFieldValidator></td>
                <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxcontact" ErrorMessage="Please enter correct number" 
                    ValidationExpression="\d{10}" ForeColor="Red">*</asp:RegularExpressionValidator></td>
            </td>
            <td class="style31">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
        <td  class="style29">
                <asp:Label ID="Label11" runat="server" Text="Delivery Place :" ForeColor="Black"></asp:Label>
            </td>
            <td class="style21">
                <asp:TextBox ID="TextBoxln" runat="server" Font-Bold="True" 
                    Font-Size="16pt" Height="28px" Width="143px" style="margin-right: 4px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxln" ErrorMessage="Please enter the last name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td>
            <asp:Button ID="btnbook" runat="server" Text="Varify and BOOK" 
                onclick="btnbook_Click" />
        </td>
        <td>
            <asp:Button ID="btncancel" runat="server" Text="CANCEL" />
        </td>
        </tr>
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style31">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

