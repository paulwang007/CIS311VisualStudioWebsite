<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="WebForm3.aspx.cs" Inherits="CIS311Proj5.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
	<div class="container">
	
		<div class="signup-container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="152px" Width="934px">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" InsertVisible="False" ReadOnly="True" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                <asp:CommandField HeaderStyle-Width="10%" ShowDeleteButton="True" ShowEditButton="True" EditImageUrl="images/zedit.png" DeleteImageUrl="images/zdelete.png" ButtonType="Image" CancelImageUrl="images/zcancel.png" UpdateImageUrl="images/zaccept.png" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:paulString %>" 
                                    SelectCommand="SELECT * FROM [Table1]"
                                    DeleteCommand="DELETE FROM [Table1] WHERE [id] = @id"
                                    UpdateCommand="UPDATE [Table1] SET [Name] = @Name, [Email] = @Email, [Subject] = @Subject, [Message] = @Message WHERE [id] = @id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Name" Type="String" />
                                        <asp:Parameter Name="Email" Type="String" />
                                        <asp:Parameter Name="Subject" Type="String" />
                                        <asp:Parameter Name="Message" Type="String" />
                                    </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Email</asp:ListItem>
            <asp:ListItem>Subject</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Email</asp:ListItem>
            <asp:ListItem>Subject</asp:ListItem>
            <asp:ListItem>Message</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
            <asp:Button ID="Button2" runat="server" Text="Showall" />
        <asp:Button ID="Button1" runat="server" Text="Search" Height="24px" Width="82px" />
            </div>
        </div>
    </form>
</body>
</html>