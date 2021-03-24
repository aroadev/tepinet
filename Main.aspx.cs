using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tepinet
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /* Download user data to a dataset */
                DataSet ds = (DataSet)Session["UserData"];

                if (Session["UserData"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    /* Asigning the username to the label */
                    lblUser.Text = ds.Tables[0].Rows[0]["USERNAME"].ToString();
                }
            }
        }

        protected void lnkCloseSession_Click(object sender, EventArgs e)
        {
            Session["UserData"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}