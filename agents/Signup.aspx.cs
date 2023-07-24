using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.agents
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void onSubmit(object sender, EventArgs e)
        {
            // TAHA connectionString
            // string connectionString = "Server=TAHA\\SQLEXPRESS; Database=project1; User Id=sa; Password=Test@123456789; TrustServerCertificate=True;";

            // EYA connectionString
            string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;//"Server=LAPTOP-SJG8M2TO\\MSSQLSERVER01; Database=master; User Id=sa; Password=test.123; TrustServerCertificate=True;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    // Connection successful, you can execute SQL queries here
                    var email = Request.Form["email"];
                    var password = Request.Form["password"];
                    var username = Request.Form["username"];
                    var firstName = Request.Form["firstName"];
                    var lastName = Request.Form["lastName"];
                    var phoneNumber = Request.Form["phoneNumber"];
                    var country = Request.Form["country"];
                    var dateOfBirth = Request.Form["dateOfBirth"];
                    

                    string tableName = "Agent";
                    string query = $"INSERT INTO {tableName} (email, password, username, firstName, lastName, phoneNumber, country, dateOfBirth) " +
                                   "VALUES (@Email, @Password, @Username, @FirstName, @LastName, @PhoneNumber, @Country, @DateOfBirth)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Password", password);
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@FirstName", firstName);
                        command.Parameters.AddWithValue("@LastName", lastName);
                        command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                        command.Parameters.AddWithValue("@Country", country);
                        command.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
                        

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