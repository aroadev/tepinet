using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace tepinet.Backend.Data
{
    public class Register_DC
    {
        public int Register(string user, string password, string email, string name)
        {
            SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            Con.Open();
            SqlCommand Com = new SqlCommand();
            /* Command execution */
            Com.Connection = Con;
            Com.CommandType = CommandType.StoredProcedure;
            Com.CommandText = "sp_register";

            /* Stored Procedure values */
            Com.Parameters.AddWithValue("@USERNAME", user);
            Com.Parameters.AddWithValue("@PASSWORD", password);
            Com.Parameters.AddWithValue("@EMAIL", email);
            Com.Parameters.AddWithValue("@NAME", name);
            Com.ExecuteNonQuery();

            return 1;
        }
    }
}