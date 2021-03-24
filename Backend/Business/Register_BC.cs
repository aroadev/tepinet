using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using tepinet.Backend.Data;

namespace tepinet.Backend.Business
{
    public class Register_BC
    {
        public int Register(string user, string password, string email, string name)
        {
            Register_DC oDC = new Register_DC();
            return oDC.Register(user, password, email, name);
        }
    }
}