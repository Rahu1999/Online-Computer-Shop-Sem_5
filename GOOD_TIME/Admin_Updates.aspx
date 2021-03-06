<%@ Page Title="" Language="C#" MasterPageFile="Admin_master.master" AutoEventWireup="true" CodeFile="Admin_Updates.aspx.cs" Inherits="Admin_Updates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Product_id" DataSourceID="SqlDataSource1" AllowPaging="True" 
        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Product_id" HeaderText="Product_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Product_id" />
            <asp:BoundField DataField="WatchName" HeaderText="WatchName" 
                SortExpression="WatchName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
             <asp:TemplateField HeaderText="Image">
                       <ItemTemplate> 
                             <asp:Image ID="Image1" runat="server" ImageUrl='<%# "ImageHandler.ashx?ImID=" + Eval("Product_id")%>' height="100px" Width="100px" />
                       </ItemTemplate>
               </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Good_TimesConnectionString2 %>" 
        SelectCommand="SELECT * FROM [Products]"
        UpdateCommand = "Update [Products]set WatchName=@WatchName,Price=@Price where Product_id=@Product_id"
        DeleteCommand="Delete from [Products] Where Product_id=@Product_id">

        <UpdateParameters>
        <asp:Parameter Name ="WatchName" Type="String" />
        <asp:Parameter Name ="Price" Type="String" />
        </UpdateParameters>

        <DeleteParameters>
        <asp:Parameter Name ="Product_id" Type="String" />
        </DeleteParameters>

        </asp:SqlDataSource>
</asp:Content>

