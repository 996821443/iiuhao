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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connstr = "Data Source=127.0.0.1;Initial Catalog=sqlteach;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            string sql_cx1 = " select 学号,姓名,性别,生日,院系,班级,高考成绩 from 学生 where 学号 like'%" + TextBox1.Text.ToString() + "%' ";
            cmd.CommandText = sql_cx1;
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds);
            this.GridView1.DataSource = ds.Tables[0];
            this.GridView1.DataBind();
            conn.Close();
        }

    
    }
}