using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private object komut;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection(@"Server=DESKTOP-C3JB3BU\SQLEXPRESS;Database=araba;Integrated Security=true");
                conn.Open();
                var ID = Request.QueryString["ID"];

                SqlCommand komut = new SqlCommand("SELECT * FROM bakAraba WHERE ID=@ID", conn);
                komut.Parameters.AddWithValue("@ID", ID);
                SqlDataReader reader = komut.ExecuteReader();
                if (reader.Read())
                {
                    txtModelAdi.Text = reader[1].ToString();
                    txtMarkaAdi.Text = reader[2].ToString();
                    txtYil.Text = reader[3].ToString();
                    txtVites.Text = reader[4].ToString();
                    txtPlaka.Text = reader[5].ToString();
                }
                reader.Close();
                conn.Close();

                btnKaydet.Enabled = true;
            }


        }



        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Server=DESKTOP-C3JB3BU\SQLEXPRESS;Database=araba;Integrated Security=true");
            conn.Open();

            var ID = Request.QueryString["ID"];
            SqlCommand komut = new SqlCommand("UPDATE bakAraba SET ModelAdi=@ModelAdi,MarkaAdi=@MarkaAdi,Yil=@Yil,Vites=@Vites,Plaka=@Plaka WHERE ID=@ID", conn);
            komut.Parameters.AddWithValue("@ID", ID);
            komut.Parameters.AddWithValue("@ModelAdi", txtModelAdi.Text);
            komut.Parameters.AddWithValue("@MarkaAdi", txtMarkaAdi.Text);
            komut.Parameters.AddWithValue("@Yil", txtYil.Text);
            komut.Parameters.AddWithValue("@Plaka", txtPlaka.Text);
            komut.Parameters.AddWithValue("@Vites", txtVites.Text);
            komut.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("anasayfa.aspx");

        }
    }
}