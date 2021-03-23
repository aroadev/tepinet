using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using tepinet.Backend.Data;

namespace tepinet.Backend.Business
{
    public class Login_BC
    {
        public DataSet Login (string user, string password)
        {
            DataSet Ds = new DataSet();
            Login_DC oDC = new Login_DC();

            return Ds = oDC.Login(user, password);
        }
    }
}