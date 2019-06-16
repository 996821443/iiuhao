<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="xsgl.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>

        #login {
     
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    margin: auto;
    width: 70%;
       }
        #TextBox1
{
    
border-top-width :0px;
border-left-width :0px;
border-right-width :0px;
border-bottom-width:1px;
font-size: 16px;
color: black;
width:100px;
border-bottom: black thin solid;
font-style:normal;
line-height:normal;
height:22px;
font-variant:normal;
font-weight :normal;
}
#TextBox2
{
    
border-top-width :0px;
border-left-width :0px;
border-right-width :0px;
border-bottom-width:1px;
font-size: 16px;
color: black;
width:100px;
border-bottom: black thin solid;
font-style:normal;
line-height:normal;
height:22px;
font-variant:normal;
font-weight :normal;
}
#TextBox3
{
    
border-top-width :0px;
border-left-width :0px;
border-right-width :0px;
border-bottom-width:1px;
font-size: 16px;
color: black;
width:70px;
border-bottom: black thin solid;
font-style:normal;
line-height:normal;
height:22px;
font-variant:normal;
font-weight :normal;
}
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="width:600px;height:300px;opacity:1 ;font-family:YouYuan;font-size:x-large;" id="login" >
        <table title="学生管理系统">
          <tr><th colspan="6">学生管理系统 </th></tr>  
            <tr>
                <td>
                    <img src="images/yonghu.png" />
                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                                <td>
 <img src="images/mima.png" />
                </td> 
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                                <td>
 <asp:ImageButton ID="ImageButton2" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td colspan="3" > <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="学生"></asp:ListItem>
         <asp:ListItem Value="管理员"></asp:ListItem>
        </asp:RadioButtonList></td>
                
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="登录" BackColor="#0099CC" BorderStyle="Double"  BorderWidth="3px" CssClass="button1" Height="24px" Width="191px" OnClick="Button1_Click1" BorderColor="Blue" /></td>
            </tr>
        </table>
    </div>
    </div>
    </form>
</body>
</html>
