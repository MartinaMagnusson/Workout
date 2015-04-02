<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Prediction.aspx.cs" Inherits="WorkoutLabb.Placeholder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 265px;
        }
        .auto-style3 {
            color: #000000;
        }
        .auto-style4 {
            color: #FF0000;
        }
        .auto-style5 {
            width: 127px;
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
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="How much weight did you lift"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxLiftedWeight" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLiftedWeight" CssClass="auto-style4" ErrorMessage="Please enter your weight"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="How much is weight is you goal"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxWeightGoal" runat="server" OnTextChanged="TextBoxWeightGoal_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxWeightGoal" CssClass="auto-style4" ErrorMessage="Please enter your goal"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="You will be able to lift"></asp:Label>
&nbsp;<asp:Label ID="LabelGoal" runat="server" CssClass="auto-style3" Text="X"></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server" CssClass="auto-style3" Text="At the time"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxTimeToGoal" runat="server" OnTextChanged="TextBoxTimeToGoal_TextChanged" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
