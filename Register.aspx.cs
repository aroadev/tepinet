using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tepinet.Backend.Business;

namespace tepinet
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["UserData"] != null)
                {
                    Response.Redirect("Main.aspx");
                    return;
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Register_BC oBC = new Register_BC();
            
            string password = txtPassword.Text;
            string validation = txtConfirm.Text;

            if(password != validation)
            {
                lblError.Text = "Las contraseñas no coinciden.";
                return;
            }
            else
            {
                string user = txtUser.Text;
                string name = txtName.Text;
                string email = txtEmail.Text;

                oBC.Register(user, password, email, name);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Registrado con Éxito.');", true);
                System.Threading.Thread.Sleep(1000);
                Response.Redirect("Login.aspx");
            }
        }
    }
}