<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WorkoutLabb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/Login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style3 {
            width: 356px;
            text-align: right;
        }

        .auto-style5 {
            width: 129px;
        }

        .auto-style6 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="MainContent">
            <div class="CenterContent">
                <form id="form1" runat="server">

                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelUserName" runat="server" CssClass="auto-style6" Text="Username"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBoxUserName" runat="server" Width="121px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please enter Username" CssClass="auto-style6"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelPassword" runat="server" CssClass="auto-style6" Text="Password"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="121px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" CssClass="auto-style6"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="LabelError" runat="server" Style="color: #FF0000"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <asp:Button ID="ButtonLogIn" runat="server" OnClick="Button1_Click" Text="Login" />

                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>


                </form>
            </div>
        </div>
        <!-- *** MainContent end *** -->
    </div>
    <!-- *** wrapper end *** -->
</body>
</html>
