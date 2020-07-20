using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AccidentDetecting
{
    public partial class Driver : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connect1"].ConnectionString;
            con.Open();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string stname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + stname);
            try
            {
                SqlCommand cmd = new SqlCommand("insert into gmap" + "(lname,latitude,longitude,lDescription,images) values(@lname,@lat,@long,@des,@img)", con);
                cmd.Parameters.AddWithValue("@lname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@lat", hfLat.Value);
                cmd.Parameters.AddWithValue("@long", hfLon.Value);
                cmd.Parameters.AddWithValue("@des", TextBox3.Text);
                cmd.Parameters.AddWithValue("@img", "Upload/" + stname);

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('inserted successfully')</script");

            }

            catch (SqlException ex)
            {


                Response.Write("" + ex);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string stname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + stname);
            try
            {
                SqlCommand cmd = new SqlCommand("update gmap set lname=@lname,latitude=@lat,longitude=@long,lDescription=@des,images=@img where lname=@lname", con);
                cmd.Parameters.AddWithValue("@lname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@lat", hfLat.Value);
                cmd.Parameters.AddWithValue("@long", hfLon.Value);
                cmd.Parameters.AddWithValue("@des", TextBox3.Text);
                cmd.Parameters.AddWithValue("@img", "Upload/" + stname);


                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('updated successfully')</script");

            }

            catch (SqlException ex)
            {


                Response.Write("" + ex);

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("delete from gmap where lname=@lname", con);
                cmd.Parameters.AddWithValue("@lname", TextBox1.Text);


                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('deleted successfully')</script");

            }

            catch (SqlException ex)
            {


                Response.Write("" + ex);

            }
        }
    }
}