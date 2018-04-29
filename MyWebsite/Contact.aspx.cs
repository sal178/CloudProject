using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Net.Mail;

namespace MyWebsite
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void comment_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("ridabari111.rb@gmail.com");
                    mailMessage.To.Add("ridabari111.rb@gmail.com");
                    mailMessage.Subject = subject.Text;

                    mailMessage.Body = "<b>Sender Name : <b/>" + name.Text + "<br/>"
                        + "<b>Sender Email : </b>" + email.Text + "<br/>"
                        + "<b>Comments : </b>" + comment.Text;
                    mailMessage.IsBodyHtml = true;

                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials =
                        new System.Net.NetworkCredential("ridabari111.rb@gmail.com", "rb242012");
                    smtpClient.Send(mailMessage);
                    string message = "Your comment has been sent. Thankyou";
                    System.Text.StringBuilder sb = new System.Text.StringBuilder();
                    sb.Append("<script type = 'text/javascript'>");
                    sb.Append("window.onload=function(){");
                    sb.Append("alert('");
                    sb.Append(message);
                    sb.Append("')};");
                    sb.Append("</script>");
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                    return;
                    
                }
            }
            catch (Exception ex)
            {
                string message = "An error occured. Please try later.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                return;
            }

        }
    }
}