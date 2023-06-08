using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace piskuletDNM
{
    public class sqlBaglanti
    {
        public SqlConnection baglanti() 
        {
            SqlConnection baglan=new SqlConnection(@"Data Source=C:\Users\Phoenix\Documents\GitHub\piskulet.com-V2\bikes_DB;Integrated Security=True");
            baglan.Open();
            return baglan;
        }



    }
}