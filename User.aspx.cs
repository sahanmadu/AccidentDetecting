using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace AccidentDetecting
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            tblresult.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            tblresult.Text = "";

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label vehicleNO = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
            TextBox driverID = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox fullName = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox username = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox Email = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            String scon = "Data Source=DESKTOP-96TBD8T;Initial Catalog=Accident1;Integrated Security=True";
            String updatedata = "Update Driver set driverID='" + driverID.Text + "', fullname='" + fullName.Text + "', username='" + username.Text + "', email='" + Email.Text + "'  where vehicleNO='" + vehicleNO.Text + "'";
            SqlConnection con = new SqlConnection(scon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            tblresult.Text = " Updated Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label vehicleno = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            String mycon = "Data Source=DESKTOP-96TBD8T;Initial Catalog=Accident1;Integrated Security=True";
            String deletedata = "delete from Driver where vehicleNO='" + vehicleno.Text+"'";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = deletedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            tblresult.Text = " Deleted Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }

    }
}