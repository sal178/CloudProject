using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using ADODB;

namespace MyWebsite
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://microsoft.com/webservices/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        
       
       public int[] Available_Rooms()
        {
            Connection conn = new Connection();
            Recordset rs = new Recordset();
            conn.ConnectionString = "Data Source=DESKTOP-1DP2QKB\\MSSQLSERVER2;Initial Catalog=Barry;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";
            conn.Open();
            rs.Open("select Room_No from rooms where Availability_ = 'yes' and Status_='Approved'", conn, CursorTypeEnum.adOpenStatic);
            int[] room_no = new int[rs.RecordCount];
            int i = 0;
            while (!rs.EOF)
            {
                room_no[i++] = rs.Fields["Room_No"].Value;
                rs.MoveNext();
            }
            rs.Close();
            conn.Close();
            return room_no;
        }
    
    }
}
