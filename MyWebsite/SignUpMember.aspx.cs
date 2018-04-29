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
    public partial class SignUpMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SignUp_btn_Click(object sender, EventArgs e)
        {


            if (username.Text.ToString() == "" || fname.Text.ToString() == "" || lname.Text.ToString() == "" || email.Text.ToString() == "" ||
              TxtNo.Text.ToString() == "" || password.Text.ToString() == "")
            {
                string message = "Please Enter Data In All Fields";
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


            myDAL DALobj = new myDAL();


            string username1 = this.username.Text;
            string fname1 = this.fname.Text;
            string lname1 = this.lname.Text;
            string email1 = this.email.Text;
            string password1 = this.password.Text;
            string contact1 = this.TxtNo.Text;
            string type1 = "Member";
          
          


            bool flag = DALobj.setdata(username1, fname1, lname1, email1, password1, contact1,type1);


            try
            {
                if (flag == true)
                {
                    MailMessage mailMessage = new MailMessage();
                    mailMessage.From = new MailAddress("ridabari111.rb@gmail.com");
                    mailMessage.To.Add(email.Text);
                    mailMessage.Subject = "BOOKME.com";

                    mailMessage.Body = "<b>Sender Name : <b/>" + "BOOKME.com" + "<br/>"
                        + "<b>Sender Email : </b>" + "ridabari111.rb@gmail.com" + "<br/>"
                        + "<b>Comments : </b>" + "You have been registered as a member to BOOKME.com"
                      + "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("SignUpMember.aspx", "ProfileMember.aspx?name" + username.Text) + "'>Click here to activate your account.</a>";
                    mailMessage.IsBodyHtml = true;

                    SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                    smtpClient.EnableSsl = true;
                    smtpClient.Credentials =
                        new System.Net.NetworkCredential("ridabari111.rb@gmail.com", "rb242012");
                    smtpClient.Send(mailMessage);

                    Session["member"] = username.Text;
                    string url;
                    url = "Activation.aspx";
                    Response.Redirect(url);
                    return;



                }
            }
            catch (Exception ex)
            {
                string message = "An error occured, please try later";
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