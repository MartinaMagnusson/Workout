<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WorkoutLabb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Username<asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
    <div>
    
        Password<asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="ButtonLogIn" runat="server" OnClick="Button1_Click" Text="Login" />
    
    </div>
        <asp:Label ID="LabelError" runat="server"></asp:Label>
    </form>
</body>
</html>
