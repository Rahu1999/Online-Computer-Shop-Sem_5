<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Varify.aspx.cs" Inherits="Varify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Sucessfully Booked......!" 
        ForeColor="#CC33FF" 
        style="font-weight: 700; font-size: x-large; color: #00FF99"></asp:Label>
<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0099" 
    NavigateUrl="All_Watches.aspx" style="font-size: x-large; color: #66FFCC">Book another Computer......!</asp:HyperLink>
</asp:Content>

