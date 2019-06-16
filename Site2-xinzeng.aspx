<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Site2-xinzeng.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        height: 70px;
    }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            height: 40px;
        }
        .auto-style7 {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <table border="0" align="center" cellspacing="0" 
               style="width: 100%; font-size: 13px; height: 414px;">
            <tr align="center">
                <td colspan="2" style="font-size: 26px; color: #FF00FF; font-weight: bold;
                    font-family: 黑体;" class="auto-style4">
                    新增学生信息
                </td>
            </tr>
          
            <tr>
                <td align="right" class="auto-style5">
                    学号：
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="a" runat="server" BorderStyle="Groove">2019</asp:TextBox>
                    
                                  
                    
                   <asp:RequiredFieldValidator ID="Validator_Name" runat="Server" ControlToValidate="a" ErrorMessage="必填" Display="Dynamic">*</asp:RequiredFieldValidator>
                                  
                    
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    姓名：
                </td>
                <td class="style2">
                    <asp:TextBox ID="b" runat="server" BorderStyle="Groove">王二</asp:TextBox>
                   
                    
                    <asp:RequiredFieldValidator ID="Validator_Name0" runat="Server" ControlToValidate="b" Display="Dynamic" ErrorMessage="必填">*</asp:RequiredFieldValidator>
                   
                    
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    &nbsp;性别：
                </td>
                <td align="left">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                    
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style7">
                    &nbsp;生日：
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="d" runat="server" BorderStyle="Groove"></asp:TextBox>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="输入有误" ControlToValidate="d" ValidationExpression="(^\d{4}-\d{1,2}-\d{1,2})" Display="Dynamic">示例：1999-10-10</asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    &nbsp;院系：
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>软件学院</asp:ListItem>
                        <asp:ListItem>数据学院</asp:ListItem>
                        <asp:ListItem>财经学院</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style6">
                    &nbsp;班级：
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="l" runat="server" BorderStyle="Groove"></asp:TextBox>
                    
                </td>
            </tr>
            
            <tr>
                <td align="right" class="style1">
                    &nbsp;高考成绩：
                </td>
                <td colspan="">
                    <asp:TextBox ID="f" runat="server" BorderStyle="Groove"></asp:TextBox>
                    
                </td>
            </tr>
             <tr>
                <td align="right" class="style1">
                    &nbsp; 登录密码：
                </td>
                <td colspan="">
                    <asp:TextBox ID="p" runat="server" BorderStyle="Groove"></asp:TextBox>
                    
                </td>
            </tr>
            
                <td colspan="2" align="center">
                    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="　新增　" />
                    </td>
            
            </table>
</asp:Content>
