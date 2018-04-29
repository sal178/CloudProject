using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebsite
{
    public partial class AddRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_btn_Click(object sender, EventArgs e)
        {


            if (room_no.Text.ToString() == "" || type.Text.ToString() == "" || price.Text.ToString() == "" || location.Text.ToString() == "" ||
              TV.Text.ToString() == "" || fridge.Text.ToString() == "" || wifi.Text.ToString() == "" || availability.Text.ToString() == "")
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


            string roomno1 = this.room_no.Text;
            string type1 = this.type.Text;
            string price1 = this.price.Text;
            string location1 = this.location.Text;
            string TV1 = this.TV.Text;
            string fridge1 = this.fridge.Text;
            string wifi1 = this.wifi.Text;
            string availability1 = this.availability.Text;



           
            int flag = DALobj.setROOMdata(roomno1,type1,price1,location1,TV1,fridge1,wifi1,availability1);


            if (flag == 1)
            {
                string message = "Room Added";
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
            else if (flag==0)
            {
                string message = "Room Number Cannot be Duplicated";
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