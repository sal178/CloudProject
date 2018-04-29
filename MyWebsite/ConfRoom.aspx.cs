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
    public partial class ConfRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
            //if (!this.IsPostBack)
            //{
            //    //Populating a DataTable from database.
            //    DataTable dt = this.GetData();

            //    //Building an HTML string.
            //    StringBuilder html = new StringBuilder();

            //    //Table start.
            //    html.Append("<table style = 'width:80%' , border = '2px solid black'>");
                
            //    //Building the Header row.
            //    html.Append("<tr>");
            //    foreach (DataColumn column in dt.Columns)
            //    {
            //        html.Append("<th>");
            //        html.Append(column.ColumnName);
            //        html.Append("</th>");
            //    }
            //    html.Append("</tr>");

            //    //Building the Data rows.
            //    foreach (DataRow row in dt.Rows)
            //    {
            //        html.Append("<tr>");
            //        foreach (DataColumn column in dt.Columns)
            //        {
            //            html.Append("<td>");
            //            html.Append(row[column.ColumnName]);
            //            html.Append("</td>");
            //        }
            //        html.Append("</tr>");
            //    }

            //    //Table end.
            //    html.Append("</table>");

            //    //Append the HTML string to Placeholder.
            //    PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            //}
        }

        //private DataTable GetData()
        //{
        //    string constr = ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(constr))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("SELECT * FROM rooms"))
        //        {
        //            using (SqlDataAdapter sda = new SqlDataAdapter())
        //            {
        //                cmd.Connection = con;
        //                sda.SelectCommand = cmd;
        //                using (DataTable dt = new DataTable())
        //                {
        //                    sda.Fill(dt);
        //                    return dt;
        //                }
        //            }
        //        }
        //    }
        //}
        public void LoadGrid()
        {
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.SelectItem();//seting data source for this Grid
            ItemGrid.DataBind(); //bind the data source to this grid
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



            int flag = DALobj.UpdateRoom(roomno1, type1, price1, location1, TV1, fridge1, wifi1, availability1);


            if (flag == 1)
            {
                string message = "Room Sucessfully Updated!";
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