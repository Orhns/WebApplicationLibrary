using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationLibrary
{
    public partial class a_author_mng : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["connectionstr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            if (chechAutID())
            {
                Response.Write("<script>alert('Author ID is already taken')</script>");
            }
            else
            {
                addNewAuth();
            }
            clearForm();
            GridView1.DataBind();
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            if (chechAutID() == false)
            {
                Response.Write("<script>alert('Please enter correct Author ID')</script>");
            }
            else
            {
                updateAuth();
            }
            clearForm();
            GridView1.DataBind();
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            if (chechAutID() == false)
            {
                Response.Write("<script>alert('Please enter correct Author ID')</script>");
            }
            else
            {
                deleteAuth();
            }
            clearForm();
            GridView1.DataBind();
        }

        protected void getButton_Click(object sender, EventArgs e)
        {
            getAuth();
        }
        bool checkidhelper;
        bool chechAutID()
        {
            try
            {
                SqlConnection con = new SqlConnection(conn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id = @auID;",con);
                cmd.Parameters.AddWithValue("@auID",authorid.Text.Trim());
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    checkidhelper = true;
                }
                else
                {
                    checkidhelper = false;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            return checkidhelper;
        }

        void addNewAuth()
        {
            try
            {
                SqlConnection con = new SqlConnection(conn);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open(); 
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl (author_id,author_name) VALUES (@auID,@auName)", con);
                cmd.Parameters.AddWithValue("@auID", authorid.Text.Trim());
                cmd.Parameters.AddWithValue("@auName", authorName.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close() ;
                Response.Write("<script>alert('Author added succesfully.')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        void updateAuth()
        {
            try
            {
                SqlConnection con = new SqlConnection(conn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name = @auName WHERE author_id = @auID;", con);
                cmd.Parameters.AddWithValue("@auID", authorid.Text.Trim());
                cmd.Parameters.AddWithValue("@auName", authorName.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author name updated succesfully.')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        void deleteAuth()
        {
            try
            {
                SqlConnection con = new SqlConnection(conn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM author_master_tbl WHERE author_id = @auID;", con);
                cmd.Parameters.AddWithValue("@auID", authorid.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author deleted succesfully.')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        void getAuth()
        {
            try
            {
                SqlConnection con = new SqlConnection(conn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl WHERE author_id = @auID;", con);
                cmd.Parameters.AddWithValue("@auID", authorid.Text.Trim());
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        authorName.Text = reader.GetString(1);
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid author ID')</script>");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
            
        }

        void clearForm()
        {
            authorid.Text = null;
            authorName.Text = null;
        }
    }
}