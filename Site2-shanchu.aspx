<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Site2-shanchu.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%; height:419px">
        <table border="0" align="center"  style=" width:100%; height:419px"cellspacing="0" class="auto-style4">
            <tr align="center">
                <td height="40" colspan="2" style="font-size: 26px; color: #FF00FF; font-weight: bold;
                    height: 70px; font-family: 黑体;">
                    根据学号删除学生信息
                </td>
          
            <tr>
                <td align="right" class="auto-style5">
                    学号：
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="a" runat="server" BorderStyle="Groove" style="margin-top: 0px"></asp:TextBox>
                  &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="　删除　" style="height: 21px" />
                </td>
            </tr>
            </table>
    </div>
</asp:Content>
