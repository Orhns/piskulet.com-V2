using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace piskuletDNM
{
    public partial class home : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        sqlBaglanti snf3 = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From bikes_info where Id=9", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

            //------------big img homepg------------------
            SqlCommand komut3 = new SqlCommand("Select * From bikesHomepg where Id=3", snf3.baglanti());
            SqlDataReader dr3 = komut3.ExecuteReader();
            DataList3.DataSource = dr3;
            DataList3.DataBind();
        }
    }
}