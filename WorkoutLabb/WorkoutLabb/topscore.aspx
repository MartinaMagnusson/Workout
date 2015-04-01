<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="topscore.aspx.cs" Inherits="WorkoutLabb.topscore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="placeholderContentDiv">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1">
            <AlternatingItemTemplate>
                <span style="">Activity:
                <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("ActivityName") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            
            <ItemTemplate>
                <span style="">Activity:
                <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("ActivityName") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            
        </asp:ListView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetTopScoreActivity" TypeName="WorkoutLabb.Models.DAL"></asp:ObjectDataSource>
    </div>
</asp:Content>
