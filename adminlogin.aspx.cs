using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebApplicationLibrary
{
    public partial class adminlogin : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["connectionstr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            checkAdminLogin();
        }

        bool chckAdmin;
        bool checkAdminLogin()
        {
            try
            {
                SqlConnection con = new SqlConnection(conn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * From admin_login_tbl WHERE username = @adminid AND password = @apass;", con);
                cmd.Parameters.AddWithValue("@adminid", adminid.Text.Trim());
                cmd.Parameters.AddWithValue("@apass", apassword.Text.Trim());
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Response.Write("<script>alert('welcome " + reader.GetValue(0).ToString() + "');</script>");

                    }
                    chckAdmin = true;
                }
                else
                {
                    Response.Write("<script>alert('invalid credit!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            return chckAdmin;
        }
    }
}