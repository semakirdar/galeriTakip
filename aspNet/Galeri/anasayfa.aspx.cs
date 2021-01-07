using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Galeri
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SqlConnection conn = new SqlConnection(@"Server=DESKTOP-C3JB3BU\SQLEXPRESS;Database=araba;Integrated Security=true");
                SqlCommand comm = new SqlCommand("SELECT ID, ModelAdi, MarkaAdi, Yil, Vites, Plaka FROM bakAraba", conn);
                SqlDataReader reader;

                try
                {

                    conn.Open();
                    reader = comm.ExecuteReader();
                    rptarabalar.DataSource = reader;
                    rptarabalar.DataBind();
                    reader.Close();
                }
                catch
                {
                    Response.Write("Veri okuma işleminde hata meydana geldi");
                }
                finally
                {
                    conn.Close();
                }
            }

        }
        protected void rptarabalar_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Düzenle")
            {
                var ID = e.CommandArgument;
                Response.Redirect("/kayitduzenle.aspx?ID=" + ID);
               


            }
            else
            {
                var ID = e.CommandArgument;
                Response.Redirect("/kayitsil.aspx?ID=" + ID);
            }
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/yenikayit.aspx?ID=" + ID);
        }
    }

}