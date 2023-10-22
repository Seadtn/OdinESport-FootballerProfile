using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.agents
{
    public partial class Signup : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void onSubmit(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    string query = string.Empty;
                    string tableName = string.Empty;
                    var picPath = string.Empty;
                    int id = 0;
                    connection.Open();
                    // Connection successful, you can execute SQL queries here
                    var email = Request.Form["email"];
                    var password = Request.Form["pwd"];
                    var username = Request.Form["uname"];
                    var firstName = Request.Form["fname"];
                    var lastName = Request.Form["lname"];
                    var phoneNumber = Request.Form["phno"];
                    var country = Request.Form["cntry"];
                    var dateOfBirth = Request.Form["daob"];
                    var profile = Request.Form["profile"];
                    string fileName = "";
                    int idagent = 0;
                    if (fileUpload.HasFile)
                    {
                        // Specify the directory path where you want to save the photo
                        string uploadFolderPath = Server.MapPath("~/Pictures/");

                        if (!Directory.Exists(uploadFolderPath))
                        {
                            Directory.CreateDirectory(uploadFolderPath);
                        }

                         fileName = Path.GetFileName(fileUpload.FileName);
                        string filePath = Path.Combine(uploadFolderPath, fileName);

                        fileUpload.SaveAs(filePath);
                        picPath = filePath;



                    }
                    tableName = "Photo";
                    query = $"INSERT INTO {tableName} (Path) " +
                                   " VALUES ('/Pictures/" + fileName + "')";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Path", picPath);


                        // Execute the SQL query
                        command.ExecuteNonQuery();
                    }
                    query = $"SELECT TOP 1  id FROM Photo where path = '/Pictures/" + fileName + "' order by  id desc";
                    
                   SqlCommand commandGetPhot = new SqlCommand(query, connection);
                    SqlDataReader reader = commandGetPhot.ExecuteReader();
                    while (reader.Read())
                    {
                        id = reader.GetInt32(0);

                    }
                    reader.Close();
                    tableName = "Agent";
                    query = $"INSERT INTO {tableName} (PhotoID, Email, Password, Username, FirstName, LastName, PhoneNumber, Country, DateOfBirth, Profile) " +
                                  "VALUES (@PhotoId,@Email, @Password, @Username, @FirstName, @LastName, @PhoneNumber, @Country, @DateOfBirth,@Profile)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@PhotoId", id);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Password", password);
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@FirstName", firstName);
                        command.Parameters.AddWithValue("@LastName", lastName);
                        command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                        command.Parameters.AddWithValue("@Country", country);
                        command.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
                        command.Parameters.AddWithValue("@Profile", profile);

                        // Execute the SQL query 
                        command.ExecuteNonQuery();
                        


                    }
                    query = $"SELECT TOP 1  id FROM Agent  order by  id desc";
                    SqlCommand commandGetFOOT = new SqlCommand(query, connection);
                    SqlDataReader reader1 = commandGetFOOT.ExecuteReader();
                    while (reader1.Read())
                    {
                        idagent = reader1.GetInt32(0);

                    }
                    reader1.Close();
                    tableName = "AgentDescription";
                    query = $"INSERT INTO {tableName} (description,Agent) " +
                                   " VALUES (@Description,@Agent)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Description", "");
                        command.Parameters.AddWithValue("@Agent", idagent);


                        // Execute the SQL query
                        command.ExecuteNonQuery();
                    }
                    Response.Redirect("Signin.aspx");
                }
                catch (SqlException ex)
                {
                    // Handle any exceptions here
                }
            }

        }
        //protected void onSubmit(object sender, EventArgs e)
        //{

        //    using (SqlConnection connection = new SqlConnection(connectionString))
        //    {
        //        try
        //        {
        //            connection.Open();
        //            // Connection successful, you can execute SQL queries here
        //            var email = Request.Form["email"];
        //            var password = Request.Form["password"];
        //            var username = Request.Form["username"];
        //            var firstName = Request.Form["firstName"];
        //            var lastName = Request.Form["lastName"];
        //            var phoneNumber = Request.Form["phoneNumber"];
        //            var country = Request.Form["country"];
        //            var dateOfBirth = Request.Form["dateOfBirth"];


        //            string tableName = "Agent";
        //            string query = $"INSERT INTO {tableName} (email, password, username, firstName, lastName, phoneNumber, country, dateOfBirth) " +
        //                           "VALUES (@Email, @Password, @Username, @FirstName, @LastName, @PhoneNumber, @Country, @DateOfBirth)";

        //            using (SqlCommand command = new SqlCommand(query, connection))
        //            {
        //                command.Parameters.AddWithValue("@Email", email);
        //                command.Parameters.AddWithValue("@Password", password);
        //                command.Parameters.AddWithValue("@Username", username);
        //                command.Parameters.AddWithValue("@FirstName", firstName);
        //                command.Parameters.AddWithValue("@LastName", lastName);
        //                command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
        //                command.Parameters.AddWithValue("@Country", country);
        //                command.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);


        //                // Execute the SQL query
        //                command.ExecuteNonQuery();
        //            }
        //        }
        //        catch (SqlException ex)
        //        {
        //            // Handle any exceptions here
        //        }
        //    }

        //}
    }
}