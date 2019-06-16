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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string c = Session["Username"].ToString();

            string connstr = "Data Source=127.0.0.1;Initial Catalog=sqlteach;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            string a = this.a.Text.Trim();
            string b = this.b.Text.Trim();
            string sql_ins = " insert into 选课(课程编号,课程名,学号) values('" + a + "','" + b + "','" + c + "');";
            cmd.CommandText = sql_ins;
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script language=javascript>alert('新增成功！');location='Site1-xuanke.aspx'</script>");
        }
    }
}