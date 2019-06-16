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
    public partial class WebForm5 : System.Web.UI.Page
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
            string sql_upt = "delete from 学生 where 学号='" + a + "';";
            cmd.CommandText = sql_upt;
            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }
}