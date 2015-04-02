<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WorkoutLabb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Default.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 21px;
        }
        .auto-style3 {
            height: 28px;
        }
    </style>
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="placeholderContentDiv">
        
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetActivities" TypeName="WorkoutLabb.Models.DAL"></asp:ObjectDataSource>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Acivity</td>
            <td class="auto-style2">Difficulty</td>
            <td class="auto-style2">Time</td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        
        <tr>
            <td>Running</td>
            <td>
                <asp:RadioButton ID="RadioButtonEasy" runat="server" GroupName="Difficulty" Text="Easy" />
                <asp:RadioButton ID="RadioButtonMedium" runat="server" GroupName="Difficulty" Text="Medium" />
                <asp:RadioButton ID="RadioButtonHard" runat="server" GroupName="Difficulty" Text="Hard" />
            </td>
            <td>
                <asp:TextBox ID="TextBoxRunningTime" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="ButtonSubmit_Click" style="height: 26px" Text="Submit" />
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        
    </table>
    <div class="underlineDiv">
    </div>
    
</div>
</asp:Content>
