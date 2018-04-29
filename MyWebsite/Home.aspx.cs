using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebsite
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void mySignIN_btn_Click(object sender, EventArgs e)
        {

            if (username.Text.ToString() == "" || password.Text.ToString() == "")
            {
                string message = "Username or password field is empty";
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

            int result = 0;
            myDAL obj1 = new myDAL();
            string myUsername = Convert.ToString(username.Text);
            string myPassword = Convert.ToString(password.Text);
            result = obj1.UserLogin(myUsername, myPassword);

            if (result == 1)
            {
                myDAL obj2 = new myDAL();
                int result1 = 0;
                result1 = obj2.UserType(myUsername);
                if (result1 == 1)
                {
                    Session["member"] = username.Text;
                    string url;
                    url = "ProfileMember.aspx?name=" + username.Text;
                    Response.Redirect(url);
                }
                else if (result1 == 2)
                {
                    Session["admin"] = username.Text;
                    string url;
                    url = "ProfileAdmin.aspx?name=" + username.Text;
                    Response.Redirect(url);
                }
                else if (result1 == 3)
                {
                    Session["manager"] = username.Text;
                    string url;
                    url = "ProfileManager.aspx?name=" + username.Text;
                    Response.Redirect(url);
                }
            }

            else 
            {
                string message = "Login failed: Please enter a valid username";
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