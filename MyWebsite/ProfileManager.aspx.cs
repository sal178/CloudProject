using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebsite
{
    public partial class ProfileManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["manager"] != null)
            {
                Label1.Text += " " + Session["manager"].ToString();
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["manager"] = null;
            Response.Redirect("Home.aspx");


        }
    }
}