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
            font-size: large;
        }
        .auto-style4 {
            color: #FF0000;
            font-size: large;
        }
        .auto-style5 {
            width: 127px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Calendar ID="CalendarPrediction" runat="server" BackColor="White" BorderColor="Black" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="186px" NextPrevFormat="FullMonth" Width="241px" DayNameFormat="Shortest" OnSelectionChanged="CalendarPrediction_SelectionChanged" TitleFormat="Month">
        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" ForeColor="#333333" Height="10pt" />
        <DayStyle Width="14%" />
        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
        <TodayDayStyle BackColor="#CCCC99" />
    </asp:Calendar>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" BackColor="White" Text="Set start date from calendar:" style="font-size: large"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxDate" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxDate" CssClass="auto-style4" ErrorMessage="Pick a date from calendar"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="How much weight did you lift?" BackColor="White"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxLiftedWeight" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLiftedWeight" CssClass="auto-style4" ErrorMessage="Please enter your weight"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="How much is weight is you goal?" BackColor="White"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxWeightGoal" runat="server" OnTextChanged="TextBoxWeightGoal_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxWeightGoal" CssClass="auto-style4" ErrorMessage="Please enter your goal"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="LabelNotAllowed" runat="server" style="font-size: large" Text="Not allowed to choose a number less than the starting value" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" Text="Submit" Height="30px" Width="100px" />
            &nbsp;
                <asp:Button ID="ButtonClearField" runat="server" Height="30px" OnClick="ButtonClearField_Click" Text="Clear field!" Width="100px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="You will be able to lift: " BackColor="White"></asp:Label>
&nbsp;<asp:Label ID="LabelGoal" runat="server" CssClass="auto-style3" BackColor="Red" Font-Size="Large"></asp:Label>
&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="LabelTotal" runat="server" style="font-size: large"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
