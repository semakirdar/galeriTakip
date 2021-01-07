using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {               
                BtnKaydet.Enabled = true;
            }
        }
        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Server=DESKTOP-C3JB3BU\SQLEXPRESS;Database=araba;Integrated Security=true");
            conn.Open();

            SqlCommand komut = new SqlCommand("INSERT INTO bakAraba(ModelAdi,MarkaAdi,Yil,Vites,Plaka) values (@ModelAdi,@MarkaAdi,@Yil,@Plaka,@Vites)", conn);
            komut.Parameters.AddWithValue("@ModelAdi", TextBox1.Text);
            komut.Parameters.AddWithValue("@MarkaAdi", TextBox2.Text);
            komut.Parameters.AddWithValue("@Yil", TextBox3.Text);
            komut.Parameters.AddWithValue("@Plaka", TextBox4.Text);
            komut.Parameters.AddWithValue("@Vites", TextBox5.Text);
            komut.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("anasayfa.aspx");
            

        }
    }
}