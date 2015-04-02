<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Prediction.aspx.cs" Inherits="WorkoutLabb.Placeholder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 418px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 187px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" style="color: #00FF00" Text="How much weights did you lift"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxWeights" runat="server" Height="16px" OnTextChanged="TextBoxWeights_TextChanged" Width="134px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorWeightsLifted" runat="server" ControlToValidate="TextBoxWeights" ErrorMessage="Write amount of Wegiths you lifted" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" style="color: #00FF00" Text="How much is you goal"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxWeightGoal" runat="server" OnTextChanged="TextBoxWeightGoal_TextChanged" Width="134px"></asp:TextBox>
                <asp:Button ID="ButtonAmountWeights" runat="server" OnClick="ButtonAmountWeights_Click" Text="Send" />
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorYourGoal" runat="server" ControlToValidate="TextBoxWeightGoal" ErrorMessage="Write you Goal" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" style="color: #00FF00" Text="This is how long it will take until you can lift   "></asp:Label>
                <asp:Label ID="LabelGoal" runat="server" style="color: #00FF00" Text="X"></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server" style="color: #00FF00" Text="amount of kilos"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxAnswer" runat="server" OnTextChanged="TextBoxAnswer_TextChanged" ReadOnly="True" Width="134px"></asp:TextBox>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
