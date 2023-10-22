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

        string connectionString = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
             connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;

            if (!IsPostBack)
            {
                PopulatePositionComboBox();
            }
        }
        protected void onSubmit(object sender, EventArgs e)
        {
            

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    string query = string.Empty;
                    string tableName = string.Empty;
                    var picPath = string.Empty;
                    var picPathVal = string.Empty;
                    int id = 0;
                    int idfoot = 0;
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
                    var position = Request.Form["position"];

                    if (string.IsNullOrWhiteSpace(email) ||
      string.IsNullOrWhiteSpace(password) ||
      string.IsNullOrWhiteSpace(username) ||
      string.IsNullOrWhiteSpace(firstName) ||
      string.IsNullOrWhiteSpace(lastName) ||
      string.IsNullOrWhiteSpace(phoneNumber) ||
      string.IsNullOrWhiteSpace(country) ||
      string.IsNullOrWhiteSpace(dateOfBirth) ||
      string.IsNullOrWhiteSpace(height) ||
      string.IsNullOrWhiteSpace(weight) ||
      string.IsNullOrWhiteSpace(selectedValue) ||
      string.IsNullOrWhiteSpace(club) ||
      string.IsNullOrWhiteSpace(position))
                    
                        {
                            // Use ClientScript to show an alert on the client-side
                            string alertScript = "alert('Please fill in all fields before submitting.');";
                            ScriptManager.RegisterClientScriptBlock(this, GetType(), "Alert", alertScript, true);
                            return;
                        }

                    
                    else {
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
                        picPathVal = "/Pictures/"+fileName;


                    }
                    tableName = "Photo";
                    query = $"INSERT INTO {tableName} (Path) " +
                                   " VALUES (@Path)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Path", picPathVal);


                        // Execute the SQL query
                        command.ExecuteNonQuery();
                    }
                    query = $"SELECT TOP 1  id FROM Photo where path = '{picPathVal}' order by  id desc";
                    SqlCommand commandGetPhot = new SqlCommand(query, connection);
                    SqlDataReader reader = commandGetPhot.ExecuteReader();
                    while (reader.Read())
                    {
                        id = reader.GetInt32(0);

                    }
                    reader.Close();
                    tableName = "Footballer";
                    query = $"INSERT INTO {tableName} (PhotoID, Email, Password, Username, FirstName, LastName, PhoneNumber, Country, DateOfBirth, Height, Weight, Foot, Club,PositionName) " +
                                  "VALUES (@PhotoId,@Email, @Password, @Username, @FirstName, @LastName, @PhoneNumber, @Country, @DateOfBirth, @Height, @Weight, @Foot, @Club,@Position)";

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
                        command.Parameters.AddWithValue("@Position", position);
                        // Execute the SQL query 
                        command.ExecuteNonQuery();

                    }

                    query = $"SELECT TOP 1  id FROM Footballer  order by  id desc";
                    SqlCommand commandGetFOOT = new SqlCommand(query, connection);
                    SqlDataReader reader1 = commandGetFOOT.ExecuteReader();
                    while (reader1.Read())
                    {
                        idfoot = reader1.GetInt32(0);

                    }
                    reader1.Close();
                    tableName = "FootballerDescription";
                    query = $"INSERT INTO {tableName} (description,footballer) " +
                                   " VALUES (@Description,@Footballer)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Description", "");
                        command.Parameters.AddWithValue("@Footballer", idfoot);


                        // Execute the SQL query
                        command.ExecuteNonQuery();
                    }
                          Response.Redirect("signin.aspx");
                    }

                }
                catch (SqlException ex)
                {
                    // Handle any exceptions here
                }
            }

        }
        protected void PopulatePositionComboBox()
        {
            // Replace the connection string with your actual database connection string.
            string query = "SELECT PositionName FROM [FootballerPosition]";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        // Clear any previous items in the ComboBox, if any.
                        position.Items.Clear();
                        

                        while (reader.Read())
                        {
                            string positionName = reader["PositionName"].ToString();
                            ListItem item = new ListItem(positionName, positionName);
                            position.Items.Add(item);
                        }

                        reader.Close();
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions appropriately (e.g., log or display an error message).
                    }
                }
            }
        }

    }
}