using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;


namespace AccidentDetecting
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string getPlain(string txt)
        {
           
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data = md5.ComputeHash(utf8.GetBytes(txt));
                return Convert.ToBase64String(data);
            }

        }
        protected void Submit1_Click(object sender, EventArgs e)
        {
                string constr = WebConfigurationManager.ConnectionStrings["connect1"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                    try
                    {
                             con.Open();
                             string qry = "select count(*) from Driver where username='" + TextBox1.Text + "' and  password='" + TextBox2.Text + "' ";
                             SqlCommand cmd = new SqlCommand(qry, con);
                             SqlDataAdapter ada = new SqlDataAdapter(cmd);
                             DataTable dt = new DataTable();
                             ada.Fill(dt);
                             cmd.ExecuteNonQuery();
                if(dt.Rows[0][0].ToString()=="1")
                {
                    Response.Redirect("Driver.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Try agian!!!1')</script");
                }

            }
                    catch(Exception er)
            {
                Response.Write(er);

            }
              
               
               
               
         

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            TextBox2.Text = getPlain(TextBox2.Text);
        }
    }
}