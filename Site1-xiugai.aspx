<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Site1-xiugai.aspx.cs" Inherits="WebApplication1.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div style=" width:100%; height:419px">
账号&nbsp; <asp:TextBox ID="c" runat="server"></asp:TextBox>
         <br />
 原密码<asp:TextBox ID="a" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>  
         <br />
  新密码<asp:TextBox ID="b" runat="server"></asp:TextBox>  
         <asp:Button ID="Button1" runat="server" Text="修改" OnClick="Button1_Click" />
</asp:Content>
