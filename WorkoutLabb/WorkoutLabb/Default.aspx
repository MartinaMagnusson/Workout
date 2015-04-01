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
        <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource2">
            <AlternatingItemTemplate>
                <span style="">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                ActivityName:
                <asp:Label ID="ActivityNameLabel" runat="server" Text='<%# Eval("ActivityName") %>' />
                <br />
                TimeSpan:
                <asp:Label ID="TimeSpanLabel" runat="server" Text='<%# Eval("TimeSpan") %>' />
                <br />
                Calories:
                <asp:Label ID="CaloriesLabel" runat="server" Text='<%# Eval("Calories") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                ActivityName:
                <asp:TextBox ID="ActivityNameTextBox" runat="server" Text='<%# Bind("ActivityName") %>' />
                <br />
                TimeSpan:
                <asp:TextBox ID="TimeSpanTextBox" runat="server" Text='<%# Bind("TimeSpan") %>' />
                <br />
                Calories:
                <asp:TextBox ID="CaloriesTextBox" runat="server" Text='<%# Bind("Calories") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />ActivityName:
                <asp:TextBox ID="ActivityNameTextBox" runat="server" Text='<%# Bind("ActivityName") %>' />
                <br />TimeSpan:
                <asp:TextBox ID="TimeSpanTextBox" runat="server" Text='<%# Bind("TimeSpan") %>' />
                <br />Calories:
                <asp:TextBox ID="CaloriesTextBox" runat="server" Text='<%# Bind("Calories") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                ActivityName:
                <asp:Label ID="ActivityNameLabel" runat="server" Text='<%# Eval("ActivityName") %>' />
                <br />
                TimeSpan:
                <asp:Label ID="TimeSpanLabel" runat="server" Text='<%# Eval("TimeSpan") %>' />
                <br />
                Calories:
                <asp:Label ID="CaloriesLabel" runat="server" Text='<%# Eval("Calories") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                ActivityName:
                <asp:Label ID="ActivityNameLabel" runat="server" Text='<%# Eval("ActivityName") %>' />
                <br />
                TimeSpan:
                <asp:Label ID="TimeSpanLabel" runat="server" Text='<%# Eval("TimeSpan") %>' />
                <br />
                Calories:
                <asp:Label ID="CaloriesLabel" runat="server" Text='<%# Eval("Calories") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetActivities" TypeName="WorkoutLabb.Models.DAL"></asp:ObjectDataSource>
    </div>
    
</div>
</asp:Content>
