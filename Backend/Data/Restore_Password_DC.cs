using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

namespace tepinet.Backend.Data
{
    public class Restore_Password_DC
    {
        /* Conexión de sql */
        readonly SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        readonly SqlCommand Com = new SqlCommand();

        public DataSet Validate_Email(string email)
        {
            DataSet ds = new DataSet();
            Con.Open(); /* Abrir conexión a SQL */
            Com.Connection = Con; /* Asignarle al comando la conexión SQL */
            Com.CommandType = CommandType.StoredProcedure; /* Tipo de dato que se va a ingresar */
            Com.CommandText = "sp_ValidateRestoreEmail"; /* Asignando el Procedimiento almacenado */

            Com.Parameters.AddWithValue("@EMAIL", email); /* Añadiendo valores del Query */
            Com.ExecuteNonQuery();/* Ejecutando el query */

            SqlDataAdapter da = new SqlDataAdapter(Com);
            da.Fill(ds);
            Con.Close(); /* Cerramos la conexión */
            return ds;
        }

        public int Restore (string password)
        {
            Con.Open();
            Com.Connection = Con;
            Com.CommandType = CommandType.StoredProcedure;
            Com.CommandText = "sp_ForgotPassword";

            Com.Parameters.AddWithValue("@NEW_PASS", password);
            Com.ExecuteNonQuery();
            return 1;
        }

    }
}