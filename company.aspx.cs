using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class company : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text == "Local")
        {
            string cs = "Data Source=MINDMAYUR-PC;Initial Catalog=Job_Portal;Persist Security Info=True;User ID=sa;Password=mayur123";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = cs;
            con.Open();
            string IQ = "Select * from COMPANY1 where vacancy ="+txtvac.Text.Trim();
            SqlCommand cmd = new SqlCommand(IQ, con);
            com.SelectCommand = IQ;
            cmd.ExecuteNonQuery();
            con.Close();

        
        }
        if (RadioButtonList1.Text == "Global")
        {
            string cs = "Data Source=JpServer;Initial Catalog=Job_Portal;Persist Security Info=True;User ID=sa;Password=123456";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = cs;
            con.Open();
            string IQ = "Select * from COMPANY where vacancy =" + txtvac.Text.Trim();
            SqlCommand cmd = new SqlCommand(IQ, con);
            com.SelectCommand = IQ;
            cmd.ExecuteNonQuery();
            con.Close();


        }

    }
}