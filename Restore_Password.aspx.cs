using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tepinet.Backend.Business;
using System.Net;
using System.Net.Mail;
using System.Timers;
using Twilio;
using Twilio.Rest.Api.V2010.Account;
using Twilio.Types;

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
            string RecoveryEmail = txtEmail.Text;
            DataSet ds = oBc.Validate_Email(RecoveryEmail);
            

            if(ds.Tables[0].Rows.Count == 0)
            {
                lblEmailNotFound.Visible = true;
                btnRegister.Visible = true;
                lnkTryAgain.Visible = true;

                txtEmail.Visible = false;
                lbl1.Visible = false;
                Btn_SearchEmail.Visible = false;
            }
            else
            {
                string UEmail = ds.Tables[0].Rows[0]["EMAIL"].ToString();
                mainDiv.Visible = false;
                codeDiv.Visible = true;
                SendMail(UEmail);
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


        /* Local Functions */

        public static string GenCode()
        {
            string code = String.Empty;
            string[] dict = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
            Random ran = new Random();

            for (int i = 0; i < 6; i++)
            {
                int Letter = ran.Next(0, 9);
                code += dict[Letter];
            }

            return code;
        }

        public static void SendMail(string email)
        {
            try
            {
                SmtpClient smtp = new SmtpClient("smpt.gmail.com", 587); /* Cliente SMTP para correos y servicios web */
                string Code = GenCode(); /* Generador de Código */

                smtp.Credentials = new NetworkCredential("Tepinet666@gmail.com", "Teamdinamita666"); /* Credenciales de la empresa */ 
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.EnableSsl = true; /* Tunel SSL para mayor seguridad */
                smtp.UseDefaultCredentials = false;

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("Tepinet666@gmail.com", "Teamdinamita666"); /* Remitente del correo */
                mail.To.Add(new MailAddress(email, "")); /* Correo del que recibe */
                mail.Subject = "Código de Verificación / Tepinet";
                mail.IsBodyHtml = false;
                mail.Body = "!Hola!" + System.Environment.NewLine + 
                    "Código de verificación para reestablecer contraseña: " 
                        + System.Environment.NewLine + Code;
                
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine("----Error:" + ex.Message);
            }
        }

        public static void SendSMS(string number)
        {
            string code = GenCode();
            var accountSid = "ACd1ec33ce579c45b1e4806923ac22d0ee";
            var authToken = "cb065052daa93e587b7f50ec8aeb37bd";
            TwilioClient.Init(accountSid, authToken);

            var messageOptions = new CreateMessageOptions(
                new PhoneNumber("whatsapp:" + number));
            messageOptions.From = new PhoneNumber("whatsapp:+14155238886");
            messageOptions.Body = "Tu código de verificacion para tepinet es: " + code;

            var message = MessageResource.Create(messageOptions);
        }
    }
}