using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (Convert.ToString(Session["Username"]) == "")
                {
                    Response.Write("<script language=javascript>alert('您还没有登录');location='login.aspx'</script>");
                }
                else
                {

                    this.lblCurrentUser.Text = Session["Username"].ToString();
                }
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Site1-chaxun.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Site1-xuanke.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Site1-chakan.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Site1-xiugai.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

     
       
    }
}