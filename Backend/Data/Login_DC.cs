using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace tepinet.Backend.Data
{
    public class Login_DC
    {
        public DataSet Login(string user, string password)
        {
            DataSet ds = new DataSet();

            SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            Con.Open();
            SqlCommand Com = new SqlCommand();
            Com.Connection = Con;
            Com.CommandType = CommandType.StoredProcedure;
            Com.CommandText = "sp_login";

            Com.Parameters.AddWithValue("@USERNAME", user);
            Com.Parameters.AddWithValue("@PASSWORD", password);
            Com.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter(Com);
            da.Fill(ds);

            return ds;
        }
    }
}