<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="All_Computers.aspx.cs" Inherits="All_Watches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table_01"  border="20" bgcolor="Lightpurple" align="center" 
    style="margin-left: 92px">
<tr> <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Product_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Product_id" HeaderText="Product_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Product_id" />
            <asp:BoundField DataField="watchName" HeaderText="watchName" 
                SortExpression="watchName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
               <asp:TemplateField HeaderText="Image">
                       <ItemTemplate> 
                             <asp:Image ID="Image1" runat="server" ImageUrl='<%# "ImageHandler.ashx?ImID=" + Eval("Product_id")%>' height="100px" Width="100px" ForeColor="White" />
                       </ItemTemplate>
               </asp:TemplateField>
               <asp:HyperLinkField DataNavigateUrlFields="Product_id,watchName,Price"  DataNavigateUrlFormatString="Booking.aspx?id={0}&name={1}&price={2}" Text="Book now" HeaderText="Booking" ItemStyle-ForeColor="White" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Good_TimesConnectionString %>" 
        SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        </td>
        </tr>
</table>
</asp:Content>

