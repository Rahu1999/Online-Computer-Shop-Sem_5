<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" 
    onselectedindexchanged="GridView1_SelectedIndexChanged" 
        DataKeyNames="Product_id">
    <Columns>
        <asp:BoundField DataField="Product_id" HeaderText="Product_id" 
            SortExpression="Product_id" ReadOnly="True" />
        <asp:BoundField DataField="WatchName" HeaderText="WatchName" 
            SortExpression="WatchName" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Good_TimesConnectionString %>" 
    SelectCommand="SELECT * FROM [Products]" 
        onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>    

</asp:Content>


