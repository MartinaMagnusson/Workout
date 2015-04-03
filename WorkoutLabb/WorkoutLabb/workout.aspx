<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="workout.aspx.cs" Inherits="WorkoutLabb.workout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/workout.css" rel="stylesheet" />
    
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
        
        <table class="auto-style1">
        <tr>
            <td class="auto-style2">Activity</td>
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
                <asp:RadioButton ID="RadioButtonTime" runat="server" GroupName="AskIfTimeOrSets" Text="Time" AutoPostBack="True" OnCheckedChanged="CheckTimeOrSetsCheckedEvent" />
                    <asp:RadioButton ID="RadioButtonSets" runat="server" GroupName="AskIfTimeOrSets" Text="Sets" OnCheckedChanged="CheckTimeOrSetsCheckedEvent" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3">
                
                <asp:TextBox ID="TextBoxWorkoutTime" runat="server" Visible="False" Width="51px"></asp:TextBox>
                
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style3">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1">
            <AlternatingItemTemplate>
                <span style="background-color: #FAFAD2;color: #284775;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                <br />
                </span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #FFCC66;color: #000080;">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
                </span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #FFFBD6;color: #333333;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                <br />
                </span>
        </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #FFCC66;font-weight: bold;color: #000080;">ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
        </asp:ListView>
            </td>
            <td class="auto-style3">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="ObjectDataSource2">
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
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
                                <asp:Label ID="WorkoutTypeLabel" runat="server" Text='<%# Eval("WorkoutType") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TraningDateLabel" runat="server" Text='<%# Eval("TraningDate") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
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
                                <asp:TextBox ID="WorkoutTypeTextBox" runat="server" Text='<%# Bind("WorkoutType") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TraningDateTextBox" runat="server" Text='<%# Bind("TraningDate") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
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
                                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
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
                                <asp:TextBox ID="WorkoutTypeTextBox" runat="server" Text='<%# Bind("WorkoutType") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TraningDateTextBox" runat="server" Text='<%# Bind("TraningDate") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
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
                                <asp:Label ID="WorkoutTypeLabel" runat="server" Text='<%# Eval("WorkoutType") %>' />
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
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">ID</th>
                                            <th runat="server">TimeSpan</th>
                                            <th runat="server">Sets</th>
                                            <th runat="server">Difficulty</th>
                                            <th runat="server">WorkoutType</th>
                                            <th runat="server">TraningDate</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            </td>
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
                                <asp:Label ID="WorkoutTypeLabel" runat="server" Text='<%# Eval("WorkoutType") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TraningDateLabel" runat="server" Text='<%# Eval("TraningDate") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DataObjectTypeName="System.Collections.Generic.List`1[[WorkoutLabb.Activity, WorkoutLabb, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]" InsertMethod="InsertTest" SelectMethod="GetAllActivities" TypeName="WorkoutLabb.Models.DAL" UpdateMethod="InsertTest"></asp:ObjectDataSource>
            </td>
            <td class="auto-style3"></td>
        </tr>
        
    </table>
        
         <asp:ListView ID ="listView" runat="server">
        <ItemTemplate>
        <asp:Label runat="server" Text='<%#Eval("WorkoutType")%>'>

        </asp:Label>
            <br/>
        </ItemTemplate>
             



    </asp:ListView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WorkoutLabb.Models.TestClass" InsertMethod="InsertTest" SelectMethod="GetTestClasses" TypeName="WorkoutLabb.Models.DAL" UpdateMethod="InsertTest"></asp:ObjectDataSource>
        <asp:Button ID="ButtonSubmitWorkout" runat="server" Text="Submit" OnClick="ButtonSubmitWorkout_Click" />
</div>
</asp:Content>
