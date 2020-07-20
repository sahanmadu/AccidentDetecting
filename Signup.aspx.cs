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
    public partial class Signup : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        static string getHash(string txt)
        {
            using(MD5CryptoServiceProvider md5=new MD5CryptoServiceProvider())
            {
                UTF8Encoding utf8 = new UTF8Encoding();
                byte[] data = md5.ComputeHash(utf8.GetBytes(txt));
                return Convert.ToBase64String(data);
            }
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            con.ConnectionString = ConfigurationManager.ConnectionStrings["connect1"].ConnectionString;
            con.Open();
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            



            try
            {
                SqlCommand cmd = new SqlCommand("insert into Driver" + "(vehicleNO,driverID,fullname,email,username,password,ucpassword)values(@vehicleNO,@driverID,@fullname,@email,@username,@password,@ucpassword)", con);
                cmd.Parameters.AddWithValue("@vehicleNO", txtNo.Text);
                cmd.Parameters.AddWithValue("@driverID", txtCusID.Text);
                cmd.Parameters.AddWithValue("@fullname", txtfname.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@username", txtusername.Text);
                cmd.Parameters.AddWithValue("@password",txtpwd.Text);
                cmd.Parameters.AddWithValue("@ucpassword", txtcpwd.Text);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('inserted successfully')</script");

            }
            catch (SqlException ex)
            {
             

                Response.Write(""+ex);
                
            }
        }

        protected void txtpwd_TextChanged(object sender, EventArgs e)
        {
            txtpwd.Text = getHash(txtpwd.Text);
           
        }

        protected void txtcpwd_TextChanged(object sender, EventArgs e)
        {
            txtcpwd.Text = getHash(txtcpwd.Text);
        }
    }

}    
