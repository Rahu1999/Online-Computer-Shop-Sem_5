<%@ Page Title="" Language="C#" MasterPageFile="Admin_master.master" AutoEventWireup="true" CodeFile="AddProducts.aspx.cs" Inherits="admin_add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 474px;
        }
        .gd
        {
            position:absolute;
        top: 790px;
        left: 498px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 style="background-color: #FFFFFF; font-family: Algerian; font-size: x-large; margin-left: 280px; color: #0099FF;">Add Product</h3>
   <table style="width: 797px; height: 401px; margin-left: 287px;">
    
        <tr>
            <td bgcolor="#CCFF33" 
                style="font-size: large; color: #0099FF; font-family: Algerian;">
                COMPUTER&nbsp; NAME:-
            </td>
            <td bgcolor="#CCFF33" class="style7">
                <asp:TextBox ID="Product_name" runat="server" Width="200px" Height="27px"></asp:TextBox>
            </td>
        </tr>
        
        
        <tr>
            <td bgcolor="#CCFF33" 
                style="font-size: large; color: #0099FF; font-family: Algerian;">
                COMPUTER IMAGE:-
            </td>
            <td bgcolor="#CCFF33" class="style7">
                <asp:FileUpload ID="f1" runat="server"></asp:FileUpload>
            </td>
        </tr>
        <tr>
            <td bgcolor="#CCFF33" 
                style="font-size: large; color: #0099FF; font-family: Algerian;">
                PRICE:-</td>
            <td bgcolor="#CCFF33" class="style7">
                <asp:TextBox ID="tp" runat="server" Width="185px"></asp:TextBox>
            </td>
        </tr>
       


        <tr>
            <td colspan="2" align="center" bgcolor="#CCFF33">
                <asp:Button ID="upload" runat="server" onclick="Button7_Click" Text="Upload" 
                    BackColor="White" BorderColor="#9900CC" BorderStyle="Groove" 
                    ForeColor="#9900CC" Height="44px" Width="109px"/>
                &nbsp;&nbsp;
                  <asp:Button ID="b2" runat="server" Text="Cancel" OnClick="b2_Click" 
                    BackColor="White" BorderColor="#9900CC" BorderStyle="Groove" 
                    ForeColor="#9900CC" Height="44px" Width="109px"/>
                <asp:Label ID="Labelmsg" runat="server" Text="Label"></asp:Label>
            </td>

        </tr>
    </table>
</asp:Content>

