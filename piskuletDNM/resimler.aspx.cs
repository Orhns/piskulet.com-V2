using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

namespace piskuletDNM
{
    public partial class resimler : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From bikes", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string file_prefix = Server.MapPath("~/images/otherpages");
            //if (FileUpload1.HasFile)
            //{
            //    string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            //    if (extension.ToLower() == ".jpg")
            //    {
            //        string filename = file_prefix + FileUpload1.FileName;
            //        FileUpload1.SaveAs(file_prefix + Path.GetFileName(extension));
                    
            //    }
            //    else
            //        Response.Write("You should upload only JPG.");
            //}
        }
    }
}