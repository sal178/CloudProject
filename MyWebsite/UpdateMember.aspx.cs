using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebsite
{
    public partial class UpdateMember : System.Web.UI.Page
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
           




            int flag = DALobj.UpdateMember(username1, fname1, lname1, email1, password1, contact1);



            if (flag == 1)
            {
                string url;
                url = "ProfileMember.aspx?name=" + username.Text;
                Response.Redirect(url);

            }
            else
            {
                string message = "Updation Failed! Please enter correct data!";
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