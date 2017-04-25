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
            Page.Validate();
            if (Page.IsValid)
            {
                //credentials - e.g. username and password for the account
                SmtpClient smtpClient = new SmtpClient();

                MailMessage msg = new MailMessage(txtEmail.Text, "syawal2687@gmail.com");


                //settings specific to the mail service, e.g. server location, port number and that ssl is required
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;


                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("syawal2687@gmail.com", "$y4w4L510");
                smtpClient.Credentials = credentials;
                msg.Subject = "Name: " + txtName.Text + " Subject: " + txtSubject.Text;
                msg.Body = txtEmail.Text + "\r\n" + txtMessage.Text;

                try
                {
                    smtpClient.Send(msg);
                    litResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
                    //Response.Write("<script>alert('Your message successfully sent! Thank you for contacting us.');</script>");
                }
                catch (Exception ex)
                {
                    //display the full error to the user
                    litResult.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
                    txtName.Text = "";
                    txtSubject.Text = "";
                    txtEmail.Text = "";
                    txtMessage.Text = "";
                }
            }
        }
    }
}