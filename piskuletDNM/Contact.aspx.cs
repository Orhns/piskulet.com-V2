using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace piskuletDNM
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["bikes_DBConnectionString"].ConnectionString);
            conn.Open();
            try
            {
                //create SQL statement
                string insertQuery = "insert into contact(ad,soyad,cinsiyet,bike_id,mobil,email,mesaj) " +
                    "values (@ad,@soyad,@cinsiyet,@bike_id,@mobil,@email,@mesaj)";

                SqlCommand cmd1 = new SqlCommand(insertQuery, conn);

                cmd1.Parameters.AddWithValue("@ad", TextBoxAD.Text);
                cmd1.Parameters.AddWithValue("@soyad", TextBoxSOYAD.Text);
                cmd1.Parameters.AddWithValue("@cinsiyet", Gender.SelectedValue.ToString());
                cmd1.Parameters.AddWithValue("@bike_id", DropDownList1.SelectedValue.ToString());
                cmd1.Parameters.AddWithValue("@mobil", TextBoxMOBIL.Text);
                cmd1.Parameters.AddWithValue("@email", TextBoxEMAIL.Text);
                cmd1.Parameters.AddWithValue("@mesaj", TextBoxMESAJ.Text);
                //cmd1.Parameters.AddWithValue("@Gender", Gender.SelectedValue.ToString());
                //cmd1.Parameters.AddWithValue("@Information", About.Text);
                //cmd1.Parameters.AddWithValue("@Email", Email.Text);
                //cmd1.Parameters.AddWithValue("@Password", Pw1.Text);
                //cmd1.Parameters.AddWithValue("@CVFileName", ViewState["CVFileName"].ToString());

                //Execute SQL
                cmd1.ExecuteNonQuery();

                //If record added successfully, open Employee List
                Response.Redirect("Contact.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            //close connection
            conn.Close();

        }
    }
}