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
    public partial class a_book_i : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["connectionstr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getBtn_Click(object sender, EventArgs e)
        {
            getNames();
        }

        protected void issueBtn_Click(object sender, EventArgs e)
        {

        }

        protected void returnBtn_Click(object sender, EventArgs e)
        {

        }

        void getNames()
        {
            try
            {

                SqlConnection con = new SqlConnection(conn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT book_name FROM book_master_tbl WHERE book_id = @book_id;", con);
                cmd.Parameters.AddWithValue("@book_id", bookidTxt.Text.Trim());
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    booknameTxt.Text = dt.Rows[0]["book_name"].ToString();  
                }
                else
                {
                    Response.Write("<script>alert('Invalid Book ID')</script>");
                }

                cmd = new SqlCommand("SELECT full_name FROM member_master_tbl WHERE member_id = @member_id;", con);
                cmd.Parameters.AddWithValue("@member_id", memberidTxt.Text.Trim());
                adapter = new SqlDataAdapter(cmd);
                dt = new DataTable();
                adapter.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    membernameTxt.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Member ID')</script>");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        
    }
}