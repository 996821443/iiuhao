<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Site2-chakansuoyou.aspx.cs" Inherits="WebApplication1.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div style="width:550px; height:755px"> <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="学号" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" SortExpression="学号" />
            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
            <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
            <asp:BoundField DataField="生日" HeaderText="生日" SortExpression="生日" />
            <asp:BoundField DataField="院系" HeaderText="院系" SortExpression="院系" />
            <asp:BoundField DataField="班级" HeaderText="班级" SortExpression="班级" />
            <asp:BoundField DataField="高考成绩" HeaderText="高考成绩" SortExpression="高考成绩" />
            <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>  </div> 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LhConnectionString %>" SelectCommand="SELECT * FROM [学生]"></asp:SqlDataSource>
</asp:Content>
