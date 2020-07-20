using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace AccidentDetecting
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string constr = WebConfigurationManager.ConnectionStrings["connect1"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                string qry = "select count(*) from Admin1 where username='" + TextBox1.Text + "' and  password='" + TextBox2.Text + "' ";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataAdapter ada = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                ada.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Response.Redirect("AdminPanel.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Try agian!!!1')</script");
                }

            }
            catch (Exception er)
            {
                Response.Write(er);

            }

        }
    }
}