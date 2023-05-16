using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplicationLibrary
{
    public partial class a_book_inventory : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["connectionstr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getAuthorPublisherValues();
            GridView1.DataBind(); 
        }

        protected void getBtn_Click(object sender, EventArgs e)
        {

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (chechBookID())
            {
                Response.Write("<script>alert('Book ID is already taken')</script>");
            }
            else
            {
                addNewBook();
            }
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {

        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {

        }

        void getAuthorPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(conn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT author_name FROM author_master_tbl ;", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                DropDownAuthors.DataSource = dt;
                DropDownAuthors.DataValueField = "author_name";
                DropDownAuthors.DataBind();

                cmd = new SqlCommand("SELECT publisher_name FROM publisher_master_tbl ;", con);
                adapter = new SqlDataAdapter(cmd);
                dt = new DataTable();
                adapter.Fill(dt);
                DropDownPublishers.DataSource = dt;
                DropDownPublishers.DataValueField = "publisher_name";
                DropDownPublishers.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        void addNewBook()
        {
            try
            {
                //getting values from gende dropdown
                string genres = "";
                foreach (int i in ListBoxGenre.GetSelectedIndices())
                {
                    genres = genres + ListBoxGenre.Items[i] + ",";
                }
                genres = genres.Remove(genres.Length - 1);
                //adjusting image file location
                string filepath = "~/book_inventory/books1.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("book_inventory/" + filename));
                filepath = "~/book_inventory/" + filename;

                SqlConnection con = new SqlConnection(conn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_master_tbl (book_id,book_name,genre,author_name,publisher_name," +
                    "publish_date,language,edition,book_cost,no_of_pages,book_description,actual_stock,current_stock,book_img_link)" +
                    " VALUES (@bID,@bNAME,@genre,@aName,@pName,@pDate,@language,@edition,@bCost,@noPages,@bDesc,@aStock,@cStock,@imgLink)", con);
                cmd.Parameters.AddWithValue("@bID", bookIDtxt.Text.Trim());
                cmd.Parameters.AddWithValue("@bNAME", bookNametxt.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@aName", DropDownAuthors.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pName", DropDownPublishers.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@pDate", publishDatetxt.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownLanguage.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", editiontxt.Text.Trim());
                cmd.Parameters.AddWithValue("@bCost", bookcosttxt.Text.Trim());
                cmd.Parameters.AddWithValue("@noPages", pagestxt.Text.Trim());
                cmd.Parameters.AddWithValue("@bDesc", description.Text.Trim());
                cmd.Parameters.AddWithValue("@aStock", actualstocktxt.Text.Trim());
                cmd.Parameters.AddWithValue("@cStock", actualstocktxt.Text.Trim());
                cmd.Parameters.AddWithValue("@imgLink", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book added.')</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        bool checkidhelper;
        bool chechBookID()
        {
            try
            {
                SqlConnection con = new SqlConnection(conn);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM book_master_tbl WHERE book_id = @bookID OR book_name = @bName;", con);
                cmd.Parameters.AddWithValue("@bookID", bookIDtxt.Text.Trim());
                cmd.Parameters.AddWithValue("@bName", bookNametxt.Text.Trim());
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
    }
}