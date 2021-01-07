using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public object OledDbConnection { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Server=DESKTOP-C3JB3BU\SQLEXPRESS;Database=araba;Integrated Security=true");
            conn.Open();
            var ID = Request.QueryString["ID"];

            SqlCommand komut = new SqlCommand("SELECT * FROM bakAraba WHERE ID=@ID", conn);
            komut.Parameters.AddWithValue("@ID", ID);
            SqlDataReader reader = komut.ExecuteReader();
            if (reader.Read())
            {
                Label2.Text = reader[1].ToString();
               Label3.Text = reader[2].ToString();
             
               Label5.Text = reader[5].ToString();
            }
            reader.Close();
            conn.Close();
}

        protected void ButtonSil_Click(object sender, EventArgs e)
        {
            


                SqlConnection conn = new SqlConnection(@"Server=DESKTOP-C3JB3BU\SQLEXPRESS;Database=araba;Integrated Security=true");
                conn.Open();

                var ID = Request.QueryString["ID"];
               SqlCommand komut = new SqlCommand("Delete from bakAraba WHERE ID=@ID", conn);
                komut.Parameters.AddWithValue("@ID", ID);
                

                komut.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("anasayfa.aspx");

           

        }

        

        protected void ButtonVazgec_Click(object sender, EventArgs e)
        {
            Response.Redirect("anasayfa.aspx");
        }
    }

       
    }
    
