using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using tepinet.Backend.Data;

namespace tepinet.Backend.Business
{
    public class Restore_Password_BC
    {
        Restore_Password_DC oDC = new Restore_Password_DC();
        public DataSet Validate_Email(string email)
        {
            DataSet ds = new DataSet();
            return ds = oDC.Validate_Email(email);
        }

        public int Restore (string password)
        {
            return oDC.Restore(password);
        }
    }
}