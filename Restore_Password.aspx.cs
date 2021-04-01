using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tepinet.Backend.Business;

namespace tepinet
{
    public partial class Restore_Password : System.Web.UI.Page
    {
        readonly Restore_Password_BC oBc = new Restore_Password_BC();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserData"] != null)
                    Response.Redirect("Main.aspx");                   
            }
        }

        protected void Btn_SearchEmail_Click(object sender, EventArgs e)
        {
            string Email = txtEmail.Text;
            DataSet ds = oBc.Validate_Email(Email);

            if(ds.Tables[0].Rows.Count == 0)
            {
                lblEmailNotFound.Visible = true;
                btnRegister.Visible = true;

                txtEmail.Visible = false;
                lbl1.Visible = false;
                Btn_SearchEmail.Visible = false;
            }
            else
            {
                
            }    

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void lnkTryAgain_Click(object sender, EventArgs e)
        {
            Response.Redirect("Restore_Password.aspx");
        }
    }
}