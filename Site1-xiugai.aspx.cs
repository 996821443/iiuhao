using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connstr = "Data Source=PW1C2BP9PFHS2K9;Initial Catalog=sqlteach;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            string a = this.a.Text.Trim();
            string b = this.b.Text.Trim();
            string c = this.c.Text.Trim();
            string sql_upt = "update 学生 set 密码='" + b + "' where 学号='" + c + "'and 密码='" + a + "'";
            cmd.CommandText = sql_upt;
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script language=javascript>alert('修改成功！');location='login.aspx'</script>");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

      
    }
}