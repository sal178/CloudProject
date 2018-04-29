using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace MyWebsite
{
    public class myDAL
    {

        private static readonly string connString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon"].ConnectionString;
        public DataSet SelectItem() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select * from rooms", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }


        public bool setdata(string username, string fname, string lname, string email, string password, string contact,string type)
        {
            SqlConnection con = new SqlConnection(connString);

            SqlCommand com = new SqlCommand("EnterUsers", con);
            con.Open();

            com.CommandType = CommandType.StoredProcedure;

            try
            {
                SqlParameter p1 = new SqlParameter("username", username);
                SqlParameter p2 = new SqlParameter("fname", fname);
                SqlParameter p3 = new SqlParameter("lname", lname);
                SqlParameter p4 = new SqlParameter("email", email);
                SqlParameter p5 = new SqlParameter("pword", password);
                SqlParameter p6 = new SqlParameter("phoneNo", contact);
                SqlParameter p7 = new SqlParameter("type", type);


                com.Parameters.Add(p1);
                com.Parameters.Add(p2);
                com.Parameters.Add(p3);
                com.Parameters.Add(p4);
                com.Parameters.Add(p5);
                com.Parameters.Add(p6);
                com.Parameters.Add(p7);



                com.ExecuteNonQuery();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return true;
        }

        public int UpdateMember(string username, string fname, string lname, string password, string email, string contact) 
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd;
            int docins = 0;

            try
            {
                con.Open();
                cmd = new SqlCommand("UpdateMembers", con); //name of stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Username", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@FName", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@LName", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@UserPassword", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 40);
                cmd.Parameters.Add("@Contact", SqlDbType.VarChar, 18);
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@Username"].Value = username;
                cmd.Parameters["@FName"].Value = fname;
                cmd.Parameters["@LName"].Value = lname;
                cmd.Parameters["@UserPassword"].Value = password;
                cmd.Parameters["@Email"].Value = email;
                cmd.Parameters["@Contact"].Value = contact;



                cmd.ExecuteNonQuery();

                // read output value 
                docins = Convert.ToInt32(cmd.Parameters["@flag"].Value);//convert to output parameter to interger format


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return docins;
        }


        public int UserLogin(string username, string password)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd;
            int UserID = 0;

            try
            {
                con.Open();

                cmd = new SqlCommand("SignIN ", con); //name of stored procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Username", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@UserPassword", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@Username"].Value = username;
                cmd.Parameters["@UserPassword"].Value = password;


                cmd.ExecuteNonQuery();

                // read output value 
                UserID = Convert.ToInt32(cmd.Parameters["@flag"].Value);//convert to output parameter to interger format
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return UserID;
        }






        public int UserType(string Username)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd;
            int User_type = 0;

            try
            {
                con.Open();
                string users = null;
                cmd = new SqlCommand("UserTypessss", con); //name of stored procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Username", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@UserType", SqlDbType.VarChar, 10).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@Username"].Value = Username;


                cmd.ExecuteNonQuery();

                // read output value 
                users = Convert.ToString(cmd.Parameters["@UserType"].Value);//convert to output parameter to interger format
                if (users == "Member")
                {
                    User_type = 1;
                }
                else if (users == "Admin")
                {
                    User_type = 2;
                }
                else if (users == "Manager")
                {
                    User_type = 3;
                }

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return User_type;
        }

        public int setROOMdata(string roomno1,string type1,string price1,string location1,string TV1,string fridge1,string wifi1,string availability1)
        {
            SqlConnection con = new SqlConnection(connString);

            SqlCommand cmd;
            con.Open();

           
            int flag = 0;
            

            try
            {
               cmd  = new SqlCommand("EnterRooms", con);
               cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@room_no", SqlDbType.Int);
                cmd.Parameters.Add("@type", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@price", SqlDbType.Int);
                cmd.Parameters.Add("@location", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@TV", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@fridge", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@wifi", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@availability", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@room_no"].Value = roomno1;
                cmd.Parameters["@type"].Value = type1;
                cmd.Parameters["@price"].Value = price1;
                cmd.Parameters["@location"].Value = location1;
                cmd.Parameters["@TV"].Value = TV1;
                cmd.Parameters["@fridge"].Value = fridge1;
                cmd.Parameters["@wifi"].Value = wifi1;
                cmd.Parameters["@availability"].Value = availability1;


                cmd.ExecuteNonQuery();

                // read output value 
                flag = Convert.ToInt32(cmd.Parameters["@flag"].Value);//convert to output parameter to interger format
                
               


                cmd.ExecuteNonQuery();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return flag;
        }

        public int UpdateRoom(string roomno1, string type1, string price1, string location1, string TV1, string fridge1, string wifi1, string  availability1)

        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd;
            int docins = 0;

            try
            {
                con.Open();
                cmd = new SqlCommand("UpdateRoom", con); //name of stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@room_no", SqlDbType.Int);
                cmd.Parameters.Add("@type_", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@price", SqlDbType.Int);
                cmd.Parameters.Add("@location", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@TV", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@fridge", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@wifi", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@availability", SqlDbType.VarChar, 10);
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@room_no"].Value = roomno1;
                cmd.Parameters["@type_"].Value = type1;
                cmd.Parameters["@price"].Value = price1;
                cmd.Parameters["@location"].Value = location1;
                cmd.Parameters["@TV"].Value = TV1;
                cmd.Parameters["@fridge"].Value = fridge1;
                cmd.Parameters["@wifi"].Value = wifi1;
                cmd.Parameters["@availability"].Value = availability1;



                cmd.ExecuteNonQuery();

                // read output value 
                docins = Convert.ToInt32(cmd.Parameters["@flag"].Value);//convert to output parameter to interger format


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return docins;
        }

        public int SetPrice(string roomno1,string price1)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd;
            int docins = 0;

            try
            {
                con.Open();
                cmd = new SqlCommand("SetPrice", con); //name of stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@room_no", SqlDbType.Int);
                cmd.Parameters.Add("@price", SqlDbType.Int);
         
                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@room_no"].Value = roomno1;
                
                cmd.Parameters["@price"].Value = price1;
             


                cmd.ExecuteNonQuery();

                // read output value 
                docins = Convert.ToInt32(cmd.Parameters["@flag"].Value);//convert to output parameter to interger format


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return docins;
        }


        public int ApproveRooms(string roomno1)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd;
            int docins = 0;

            try
            {
                con.Open();
                cmd = new SqlCommand("ApproveRooms", con); //name of stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@room_no", SqlDbType.Int);
       

                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@room_no"].Value = roomno1;
                cmd.ExecuteNonQuery();

                // read output value 
                docins = Convert.ToInt32(cmd.Parameters["@flag"].Value);//convert to output parameter to interger format


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return docins;
        }

        public int SearchRooms(string type1,string location1)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd;
            int docins = 0;

            try
            {
                con.Open();
                cmd = new SqlCommand("SearchRoom", con); //name of stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@type_", SqlDbType.VarChar,20);
                cmd.Parameters.Add("@location", SqlDbType.VarChar, 20);


                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@type_"].Value = type1;
                cmd.Parameters["@location"].Value = location1;
                cmd.ExecuteNonQuery();

                // read output value 
                docins = Convert.ToInt32(cmd.Parameters["@flag"].Value);//convert to output parameter to interger format


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return docins;
        }


        public int BookRooms(string type1, string location1,string username)
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand cmd;
            int docins = 0;

            try
            {
                con.Open();
                cmd = new SqlCommand("BookRoom", con); //name of stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@type_", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@location", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@username", SqlDbType.VarChar, 20);


                cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@type_"].Value = type1;
                cmd.Parameters["@location"].Value = location1;
                cmd.Parameters["@username"].Value = username;
                cmd.ExecuteNonQuery();

                // read output value 
                docins = Convert.ToInt32(cmd.Parameters["@flag"].Value);//convert to output parameter to interger format


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return docins;
        }
      
      

    }
}