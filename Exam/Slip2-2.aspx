<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slip2-2.aspx.cs" Inherits="Exam.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="EmpID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" OnItemInserted="DetailsView1_ItemInserted" Width="125px">
            <Fields>
                <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" SortExpression="EmpID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpID" DataSourceID="SqlDataSource1" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated">
            <Columns>
                <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" SortExpression="EmpID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database2.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Table] WHERE [EmpID] = @EmpID" InsertCommand="INSERT INTO [Table] ([EmpID], [Name]) VALUES (@EmpID, @Name)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Name] = @Name WHERE [EmpID] = @EmpID">
            <DeleteParameters>
                <asp:Parameter Name="EmpID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpID" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="EmpID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
