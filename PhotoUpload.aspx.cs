using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace AccidentDetecting
{
    public partial class PhotoUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String constring = "Data Source=DESKTOP-96TBD8T;Initial Catalog=Accident;Integrated Security=True";
            SqlConnection con = new SqlConnection(constring);
            FileUpload1.SaveAs(Server.MapPath("/Images/") + Path.GetFileName(FileUpload1.FileName));
            String link = "Images/" + Path.GetFileName(FileUpload1.FileName);
            String query = "insert into UploadDetails(vehicleno,driverid,dname,about,aimage) values(" + txt1.Text + ",'" + txt2.Text + "','" + txt3.Text + "','" + txt4.Text + "','" + link + "')";
            SqlCommand cmd1 = new SqlCommand(query, con);
            con.Open(); ;
            cmd1.ExecuteNonQuery();
            con.Close();
            lbld.Text = "Upload successfully";
            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";
            txt4.Text = "";
        }
    }
}