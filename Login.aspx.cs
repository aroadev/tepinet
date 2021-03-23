using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tepinet.Backend.Business;

namespace tepinet.Backend
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            /* Get users information from textbox */
            string user = txtUser.Text;
            string password = txtPassword.Text;

            Login_BC oBC = new Login_BC(); /* Call to business class */
            ds = oBC.Login(user, password);

            if (ds.Tables[0].Rows.Count == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification : Usuario inexistente. Porfavor regístrese.');", true);
                ds = null;
            }
            else
            {
                string rUser = ds.Tables[0].Rows[0]["USERNAME"].ToString();
                Session["UserData"] = ds;
                Response.Redirect("");
            }

        }
    }
}