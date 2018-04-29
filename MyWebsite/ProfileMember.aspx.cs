using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebsite
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["member"] != null)
            {
                Label1.Text += " " + Session["member"].ToString();
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["member"] = null;
            Response.Redirect("Home.aspx");


        }
        protected void book_Click(object sender, EventArgs e)
        {
            if (type.Text.ToString() == "" || location.Text.ToString() == "")
            {
                string message = "Enter Data In All Feilds";
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

            string type1 = this.type.Text;
            string location1 = this.location.Text;
            string username = this.Session["member"].ToString();




            int flag = DALobj.BookRooms(type1, location1, username);


            if (flag == 1)
            {
                string message = "Room Booked Successfully";
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
            else
            {
                string message = "All rooms according to your requirements are currently booked! Check the provided list and find rooms according to your requirement";
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