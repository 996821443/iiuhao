using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace xsgl
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageButton2.ImageUrl = "ImageCode.aspx";
            Session["Username"] = "";
        }

    
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string code = TextBox3.Text;
            HttpCookie htco = Request.Cookies["ImageV"];
            string scode = htco.Value.ToString();
            if (code == scode)
            {
                switch (this.RadioButtonList1.SelectedValue)
                {
                    case "管理员":
                        if (DataBase.Get_Table("select * from 用户 where 用户名='" + TextBox1.Text + "' and 密码='" + TextBox2.Text + "'").Rows.Count > 0)
                        {
                            Session["UserName"] = TextBox1.Text;
                            Response.Redirect("index2.aspx");
                        }
                        else { Response.Write("<script language=javascript>alert('用户名或密码错误！');location='login.aspx'</script>"); }
                        break;
                    //  else {

                    //    Response.Redirect("main2.aspx");
                    //   }

                    case "学生":
                        if (DataBase.Get_Table("select 学号 from 学生 where 学号='" + TextBox1.Text + "' and 密码='" + TextBox2.Text + "'").Rows.Count > 0)
                        {

                            Session["UserName"] = TextBox1.Text;
                            Response.Redirect("index.aspx");
                        }
                        else { Response.Write("<script language=javascript>alert('用户名或密码错误！');location='login.aspx'</script>"); }
                        break;

                }
            }
            else { Response.Write("<script language=javascript>alert('验证码输入错误！');location='login.aspx'</script>"); }
        }
    }
}
