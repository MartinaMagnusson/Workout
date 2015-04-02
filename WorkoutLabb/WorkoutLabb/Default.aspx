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
        
    
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" TypeName="WorkoutLabb.Models.DAL"></asp:ObjectDataSource>
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
        
        
        <!-- *** History Table below *** -->
        

        <br/>
        <br/>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource2">
          
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="TimeSpanTextBox" runat="server" Text='<%# Bind("TimeSpan") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SetsTextBox" runat="server" Text='<%# Bind("Sets") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DifficultyTextBox" runat="server" Text='<%# Bind("Difficulty") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="WorkoutTypeListTextBox" runat="server" Text='<%# Bind("WorkoutType") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TraningDateTextBox" runat="server" Text='<%# Bind("TraningDate") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="TimeSpanLabel" runat="server" Text='<%# Eval("TimeSpan") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SetsLabel" runat="server" Text='<%# Eval("Sets") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DifficultyLabel" runat="server" Text='<%# Eval("Difficulty") %>' />
                    </td>
                    <td>
                        <asp:Label ID="WorkoutTypeListLabel" runat="server" Text='<%# Eval("WorkoutType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TraningDateLabel" runat="server" Text='<%# Eval("TraningDate") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">TimeSpan</th>
                                    <th runat="server">Sets</th>
                                    <th runat="server">Difficulty</th>
                                    <th runat="server">WorkoutTypeList</th>
                                    <th runat="server">TraningDate</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetAllActivities" TypeName="WorkoutLabb.Models.DAL"></asp:ObjectDataSource>
    </div>
    
</div>
</asp:Content>
