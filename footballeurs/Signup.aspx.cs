using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.footballeurs
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void onSubmit(object sender, EventArgs e)
        {
            // TAHA connectionString
            // string connectionString = "Server=TAHA\\SQLEXPRESS; Database=OdinESport; User Id=sa; Password=Test@123456789; TrustServerCertificate=True;";

            // EYA connectionString
            //Updated by jihen 23-07-2023
            string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;//"Server=DESKTOP-533HDB7; Database=OdinESport; User Id=sa; Password=test.123; TrustServerCertificate=True;";

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
                    var height = Request.Form["height"];
                    var weight = Request.Form["weight"];
                    string selectedValue = foot.SelectedValue;
                    var club = Request.Form["club"];
                    if (fileUpload.HasFile)
                    {
                        // Specify the directory path where you want to save the photo
                        string uploadFolderPath = Server.MapPath("~/Pictures/");

                        if (!Directory.Exists(uploadFolderPath))
                        {
                            Directory.CreateDirectory(uploadFolderPath);
                        }

                        string fileName = Path.GetFileName(fileUpload.FileName);
                        string filePath = Path.Combine(uploadFolderPath, fileName);

                        fileUpload.SaveAs(filePath);
                        picPath = filePath;



                    }
                    tableName = "Photo";
                    query = $"INSERT INTO {tableName} (Path) " +
                                   " VALUES (@Path)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Path", picPath);


                        // Execute the SQL query
                        command.ExecuteNonQuery();
                    }
                    query = $"SELECT TOP 1  id FROM Photo where path = '{picPath}'";
                    SqlCommand commandGetPhot = new SqlCommand(query, connection);
                    SqlDataReader reader = commandGetPhot.ExecuteReader();
                    while (reader.Read())
                    {
                        id = reader.GetInt32(0);

                    }
                    reader.Close();
                    tableName = "Footballer";
                    query = $"INSERT INTO {tableName} (PhotoID, Email, Password, Username, FirstName, LastName, PhoneNumber, Country, DateOfBirth, Height, Weight, Foot, Club) " +
                                  "VALUES (@PhotoId,@Email, @Password, @Username, @FirstName, @LastName, @PhoneNumber, @Country, @DateOfBirth, @Height, @Weight, @Foot, @Club)";

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
                        command.Parameters.AddWithValue("@Height", height);
                        command.Parameters.AddWithValue("@Weight", weight);
                        command.Parameters.AddWithValue("@Foot", selectedValue);
                        command.Parameters.AddWithValue("@Club", club);

                        // Execute the SQL query 
                        command.ExecuteNonQuery();

                    }
                }
                catch (SqlException ex)
                {
                    // Handle any exceptions here
                }
            }

        }

    }
}