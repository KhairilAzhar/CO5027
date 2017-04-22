using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Booking
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            //create credentials - e.g. username and password for the account
            SmtpClient smtpClient = new SmtpClient();
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("c05027lcb@gmail.com", "P@55word1");
            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage(txtEmail.Text, "c05027lcb@gmail.com");
            msg.Subject = "Name: " + txtName.Text + " Subject: " + txtSubject.Text;
            msg.Body = txtMessage.Text;

            //settings specific to the mail service, e.g. server location, port number and that ssl is required
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
                                    
            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}