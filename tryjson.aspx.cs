using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Newtonsoft.Json;

namespace tepinet
{
    public partial class tryjson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            game Game = new game
            {
                GameName = txtGameName.Text,
                VersionIO = txtVersionIO.Text

            };

            txtGameName.Text = "";
            txtVersionIO.Text = "";

            if (Session["JSON"].ToString() == string.Empty)
                Session["JSON"] = JsonConvert.SerializeObject(Game);
            else
                Session["JSON"] = Session["JSON"].ToString() + "," + JsonConvert.SerializeObject(Game);
        }

        protected void btnJson_Click(object sender, EventArgs e)
        {
            File.WriteAllText(@"C:\Users\ham3d\Desktop\info.json", "[" + Session["JSON"].ToString() + "]");
            Response.Write("<script> alert('JSON creado'); <script>");
        }
    }
}