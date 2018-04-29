using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;




namespace MyWebsite
{
    public partial class ProfileAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Label1.Text += " " + Session["admin"].ToString();
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("Home.aspx");


        }

   
      
    }
}