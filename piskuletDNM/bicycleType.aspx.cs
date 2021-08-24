using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace piskuletDNM
{
    public partial class bicycleType : System.Web.UI.Page
    {

        sqlBaglanti snf = new sqlBaglanti();
        sqlBaglanti snf2 = new sqlBaglanti();
        string Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //-------------Info Bağlantısı--------------------
            Id = Request.QueryString["Id"];
            SqlCommand komut = new SqlCommand("Select * From bikes_info where bike_Id=@p1", snf.baglanti());
            komut.Parameters.AddWithValue("@p1", Id);
            SqlDataReader dr = komut.ExecuteReader();
            DataList3.DataSource = dr;
            DataList3.DataBind();

            //---------------BİG İMG bağlantısı//---------------------

            Id = Request.QueryString["Id"];
            SqlCommand komut2 = new SqlCommand("Select * From bikes where Id=@p1", snf2.baglanti());
            komut2.Parameters.AddWithValue("@p1", Id);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList4.DataSource = dr2;
            DataList4.DataBind();
        }
    }
}