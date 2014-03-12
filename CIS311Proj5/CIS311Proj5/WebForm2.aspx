<%@ Page Language="c#" AutoEventWireup="false" CodeBehind="WebForm2.aspx.cs" Inherits="CIS311Proj5.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:paulString %>" SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
    </form>
</body>
</html>
