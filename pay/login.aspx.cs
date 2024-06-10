using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Signin_Click(object sender, EventArgs e)
    {
        i = 0;
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select * from payment_table_1 where username='" + Textbox1.Text + "' and password='" + Textbox2.Text + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);

        i = Convert.ToInt32(dt.Rows.Count.ToString());
        if (i == 1)
        {
            Session["username"] = dt.Rows[0]["username"].ToString();
            Session["password"] = dt.Rows[0]["password"].ToString();
            Response.Redirect("amount.aspx");
        }
        else
        {
            Label1.Text = "Username or Password is Incorrect!";
        }
        con.Close();
    }

}