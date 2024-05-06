<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slip1-2.aspx.cs" Inherits="Exam.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 <div>
 <h1>Quiz Questions</h1>
 <asp:Label ID="lblQuestion1" runat="server" Text="1. What is 1 + 1?"></asp:Label>
     <br />
 <asp:RadioButtonList ID="rblOptions1" runat="server">
 <asp:ListItem Text="1" Value="1"></asp:ListItem>
 <asp:ListItem Text="2" Value="2"></asp:ListItem>
 <asp:ListItem Text="3" Value="3"></asp:ListItem>
 <asp:ListItem Text="4" Value="4"></asp:ListItem>
 </asp:RadioButtonList><br />
 <asp:Label ID="lblQuestion2" runat="server" Text="2. What is the capital of 
France?"></asp:Label><br />
 <asp:RadioButtonList ID="rblOptions2" runat="server">
 <asp:ListItem Text="London" Value="London"></asp:ListItem>
 <asp:ListItem Text="Berlin" Value="Berlin"></asp:ListItem>
 <asp:ListItem Text="Paris" Value="Paris"></asp:ListItem>
 <asp:ListItem Text="Madrid" Value="Madrid"></asp:ListItem>
 </asp:RadioButtonList>
 <br />
<asp:Label ID="lblQuestion3" runat="server" Text="3. What is the not type of 
.net language?"></asp:Label>
 <asp:RadioButtonList ID="rblOptions3" runat="server">
 <asp:ListItem>Asp.net</asp:ListItem>
 <asp:ListItem>C#.net</asp:ListItem>
 <asp:ListItem>Java</asp:ListItem>
 <asp:ListItem>F#</asp:ListItem>
 </asp:RadioButtonList>
 <br />
<asp:Label ID="lblQuestion4" runat="server" Text="4. Which is not social 
media platform?"></asp:Label>
 <asp:RadioButtonList ID="rblOptions4" runat="server">
 <asp:ListItem>goindia</asp:ListItem>
 <asp:ListItem>fb</asp:ListItem>
 <asp:ListItem>insta</asp:ListItem>
 <asp:ListItem>youtube</asp:ListItem>
 </asp:RadioButtonList>
 <br />
<asp:Label ID="lblQuestion5" runat="server" Text="5. Who is inventor of C 
language?"></asp:Label>
 <asp:RadioButtonList ID="rblOptions5" runat="server">
 <asp:ListItem>John</asp:ListItem>
 <asp:ListItem>Dennis Ritchie</asp:ListItem>
 <asp:ListItem>Bjaourne</asp:ListItem>
 <asp:ListItem>Alon musk</asp:ListItem>
 </asp:RadioButtonList>
 <br />
<!-- Add more questions and options as needed -->
<asp:Button ID="btnSubmit" runat="server" Text="Submit"
OnClick="btnSubmit_Click1" /><br /><br />
 <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
 
 </div>
 </form>
</body>
</html>
