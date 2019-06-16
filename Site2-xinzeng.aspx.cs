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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string connstr = "Data Source = 127.0.0.1; Initial Catalog = sqlteach; Integrated Security = True";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            string a = this.a.Text.Trim();
            string b = this.b.Text.Trim();
            string d = this.d.Text.Trim();
            string c = this.RadioButtonList1.SelectedValue.Trim();
            string h = this.DropDownList1.SelectedValue.Trim();
            string l = this.l.Text.Trim();
            string f = this.f.Text.Trim();
            string p = this.p.Text.Trim();
            string sql_ins = " insert into 学生(学号,姓名,性别,生日,院系,班级,高考成绩,密码) values('" + a + "','" + b + "','" + c + "','" + d + "','" + h + "','" + l + "','" + f + "','" + p + "');";
            cmd.CommandText = sql_ins;
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script language=javascript>alert('新增成功！');</script>");
         
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}