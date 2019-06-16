<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Site1-xuanke.aspx.cs" Inherits="WebApplication1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="课程编号" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="课程编号" HeaderText="课程编号" ReadOnly="True" SortExpression="课程编号" />
            <asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名" />
            <asp:BoundField DataField="先行课" HeaderText="先行课" SortExpression="先行课" />
            <asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分" />
            <asp:BoundField DataField="授课教师" HeaderText="授课教师" SortExpression="授课教师" />
        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LhConnectionString %>" SelectCommand="SELECT * FROM [课程]"></asp:SqlDataSource>
课程编号：<asp:TextBox ID="a" runat="server">

 </asp:TextBox> 
    课程名： <asp:TextBox ID="b" runat="server">

 </asp:TextBox> <asp:Button ID="Button1" runat="server" Text="选择" OnClick="Button1_Click" /><br />
</asp:Content>
