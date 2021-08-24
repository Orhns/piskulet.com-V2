using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace piskuletDNM
{
    public partial class BisikletDetayAdmin : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Id"];

            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("Select * From bikes_info where Id=@p1",bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[4].ToString();
                }
                bgl.baglanti().Close();
                }
            }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update bikes_info set bikeName=@p1, info=@p2, pros=@p3, cons=@p4 where Id=@p6",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut.Parameters.AddWithValue("@p6", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}