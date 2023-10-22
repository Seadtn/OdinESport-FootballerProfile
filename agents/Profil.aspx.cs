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
    public partial class Profil : System.Web.UI.Page
    {
        #region Attributes
        public string AgentId = string.Empty;
        public string connectionString = string.Empty;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;
                AgentId = Request.QueryString["id"];
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            if (!IsPostBack)
            {
                
                if (AgentId != "")
                {

                    string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;
                    LoadPage();
                }            
            }
        }
        public void LoadPage()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string qry = "SELECT Agent.*,AgentDescription.description FROM Agent,AgentDescription WHERE Agent.id =@AgentId and AgentDescription.agent=Agent.id";
                    SqlCommand cmd = new SqlCommand(qry, connection);

                    if (string.IsNullOrEmpty(AgentId))
                    {
                        cmd.Parameters.AddWithValue("@AgentId", DBNull.Value);
                    }
                    else
                    {

                        cmd.Parameters.AddWithValue("@AgentId", AgentId);
                    }

                    SqlDataReader reader = cmd.ExecuteReader();
                   if (reader.Read())
                    {
                        string firstName = reader["FirstName"].ToString();
                        string lastName = reader["LastName"].ToString();
                        string email = reader["email"].ToString();
                        string phNo = reader["PhoneNumber"].ToString();
                        string Country = reader["Country"].ToString();
                        string DateOfBirth = reader["DateOfBirth"].ToString();
                        string PhotoID = reader["PhotoID"].ToString();
                        string Username = reader["Username"].ToString();
                        string description = reader["description"].ToString();

                        // Update the corresponding labels or controls with the fetched data
                        txtFirstName.Text = firstName;
                        txtLastName.Text = lastName;
                        txtUsername.Text = Username;
                        txtEmail.Text = email;
                        txtphNo.Text = phNo;
                        txtDOB.Text = DateOfBirth;
                        txtCountry.Text = Country;
                        lblFullName.Text = firstName + " " + lastName;
                        descriptionTextBox.Text = description;
                        reader.Close();
                        string qry1 = "SELECT Path FROM Photo WHERE id = @PhotoID";
                        SqlCommand cmd1 = new SqlCommand(qry1, connection);
                        cmd1.Parameters.AddWithValue("@PhotoID", PhotoID);

                        SqlDataReader reader1 = cmd1.ExecuteReader();
                        if (reader1.Read())
                        {
                            string photoPath = reader1["Path"].ToString();

                            // Update the source attribute of the image element with the fetched photo path
                            imgProfile.Src = photoPath;
                        }

                        reader1.Close();


                    }


                    connection.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
        protected void UpdateButton_Click(object sender, EventArgs e)
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
                    connection.Open();

                    // Connection successful, you can execute SQL queries here
                    var email = txtEmail.Text;
                    //var password = txt;
                    var username = txtUsername.Text;
                    var firstName = txtFirstName.Text;
                    var lastName = txtLastName.Text;
                    var phoneNumber = txtphNo.Text;
                    var country = txtCountry.Text;
                    var dateOfBirth = txtDOB.Text;
                    
                    var description = descriptionTextBox.Text;


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
                        picPathVal = "/Pictures/" + fileName;


                    }
                    if (description != null)
                    {
                        tableName = "AgentDescription";
                        query = $"Update {tableName} set description=@Description where agent=@AgentId";
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@Description", description);
                            command.Parameters.AddWithValue("@AgentId", AgentId);


                            // Execute the SQL query
                            command.ExecuteNonQuery();
                        }
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
                    tableName = "Agent";
                    query = $"Update {tableName} SET PhotoID=@PhotoId , Email=@Email,  Username =@Username,FirstName=@FirstName, LastName=@LastName, PhoneNumber=@PhoneNumber, DateOfBirth=@DateOfBirth,Country=@Country where id=@AgentId";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {


                        if (string.IsNullOrEmpty(id.ToString()))
                        {
                            command.Parameters.AddWithValue("@PhotoId", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@PhotoId", id);
                        }
                       
                        if (string.IsNullOrEmpty(phoneNumber))
                        {
                            command.Parameters.AddWithValue("@PhoneNumber", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                        }
                        if (string.IsNullOrEmpty(country))
                        {
                            command.Parameters.AddWithValue("@Country", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@Country", country);
                        }
                        if (string.IsNullOrEmpty(lastName))
                        {
                            command.Parameters.AddWithValue("@LastName", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@LastName", lastName);
                        }
                        if (string.IsNullOrEmpty(firstName))
                        {
                            command.Parameters.AddWithValue("@FirstName", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@FirstName", firstName);
                        }
                        if (string.IsNullOrEmpty(email))
                        {
                            command.Parameters.AddWithValue("@Email", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@Email", email);
                        }
                        if (string.IsNullOrEmpty(dateOfBirth))
                        {
                            command.Parameters.AddWithValue("@DateOfBirth", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
                        }
                        if (string.IsNullOrEmpty(AgentId))
                        {
                            command.Parameters.AddWithValue("@AgentId", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@AgentId", AgentId);
                        }
                        if (string.IsNullOrEmpty(username))
                        {
                            command.Parameters.AddWithValue("@Username", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@Username", username);
                        }
                        // Execute the SQL query 
                        command.ExecuteNonQuery();
                        LoadPage();
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
