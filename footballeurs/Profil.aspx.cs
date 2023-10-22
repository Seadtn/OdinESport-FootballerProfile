using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.footballeurs
{
    public partial class Profil : System.Web.UI.Page
    {
        #region Attributes
        public string footballerId = string.Empty;
        public string connectionString = string.Empty;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;
                footballerId =Request.QueryString["id"];
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            if (!IsPostBack)
            {
                PopulatePositionComboBox();
                loadPictures();
                loadVideos();
                if ( footballerId !="")
                {
                   
                    string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;// "Server=DESKTOP-533HDB7; Database=OdinESport; User Id=sa; Password=test.123; TrustServerCertificate=True;";
                    loadPage();
                }

                switch (Request["function"]/*.QueryString*/)
                {
                    case "AddPicture": AddPicture();
                        break;
                }
            }

            if (IsPostBack && Request.Files.Count > 0)
            {
                try
                {
                    HttpPostedFile file = Request.Files[0];

                    // Check if a file is uploaded
                    if (file.ContentLength > 0)
                    {
                        string filename = Path.GetFileName(file.FileName);
                        string uploadDirectory = "Pictures"; // Replace with the actual folder path
                        string filePath = Path.Combine(uploadDirectory, filename);

                        // Save the image to the specified folder
                        file.SaveAs(filePath);

                        // Optionally, you can save the image path or other information to a database

                        // Redirect back to the same page after successful upload
                        Response.Redirect(Request.Url.ToString());
                    }
                }
                catch (Exception ex)
                {
                    // Handle errors, if any
                    Response.Write("Error uploading image: " + ex.Message);
                }
            }

        }
        public void loadPage()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string qry = "SELECT Footballer.*,FootballerDescription.description FROM Footballer,FootballerDescription WHERE Footballer.id =@FootballerId and FootballerDescription.footballer=Footballer.id";
                    SqlCommand cmd = new SqlCommand(qry, connection);
                    cmd.Parameters.AddWithValue("@FootballerId", footballerId);

                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        string firstName = reader["FirstName"].ToString();
                        string lastName = reader["LastName"].ToString();
                        string email = reader["email"].ToString();
                        string phNo = reader["PhoneNumber"].ToString();
                        string Country = reader["Country"].ToString();
                        string DateOfBirth = reader["DateOfBirth"].ToString();
                        string Height = reader["Height"].ToString();
                        string Weight = reader["Weight"].ToString();
                        string Foot = reader["Foot"].ToString();
                        string Club = reader["Club"].ToString();
                        string PhotoID = reader["PhotoID"].ToString();
                        string Username = reader["Username"].ToString();
                        string positionv = reader["PositionName"].ToString();
                        string description = reader["description"].ToString();

                        // Update the corresponding labels or controls with the fetched data
                        txtFirstName.Text = firstName;
                        txtLastName.Text = lastName;
                        txtUsername.Text = Username;
                        txtEmail.Text = email;
                        txtphNo.Text = phNo;
                        txtDOB.Text = DateOfBirth;
                        txtCountry.Text = Country;
                        txtClub.Text = Club;
                        txtHeight.Text = Height;
                        txtWeight.Text = Weight;
                        position.Text = positionv;
                        descriptionTextBox.Text = description;
                        lblFullName.Text = firstName + " " + lastName;
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

        public void loadPictures()
        {
            // open connection with DB 
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    var query = "SELECT TOP (1000) [id] ,[user_id] ,[type] ,[path_url] FROM [Picture_Video]  where [type]='picture' and user_id='"+ this.footballerId + "'";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter adapt = new SqlDataAdapter(query, connection);
                    DataSet ds = new DataSet();
                    adapt.Fill(ds);
                    dt = ds.Tables[0];
                    connection.Close();
                    Response.Write("");
                    // Create a StringBuilder to build the HTML markup
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine("<div class='card-header d-flex align-items-center justify-content-between'><div class='header-title'><h4 class='card-title'>My Pictures</h4></div><span>"+ dt.Rows.Count+ "/8</span></div><div class='card-body'  ><div class='d-grid gap-card grid-cols-2'>");

                    int j = 1;

                    foreach (DataRow row in dt.Rows)
                    {
                     // Append the HTML markup for the image gallery to the StringBuilder
                        sb.AppendLine("<a id = '"+ row["id"].ToString() + "' data - fslightbox =\"gallery\" href=\"" + row["path_url"].ToString() + "\"><img src = \"" + row["path_url"].ToString() + "\" class=\"img-fluid bg-soft-info rounded\" alt=\"profile-image\"></a>");
                        j++;
                    }
                    if (dt.Rows.Count < 8)
                    {
                         //sb.AppendLine("<a href='javascript:void(0);' onclick='openFileInput()'><img src='add2.jpg' class='img-fluid bg-soft-info rounded' alt='profile-image'></a>");
                        // sb.AppendLine("<img src='add2.jpg' id='uploadImage' alt='Upload Image' />");

                        //sb.AppendLine("<form id='uploadForm' enctype='multipart/form-data'>");
                        //sb.AppendLine("<input type='file' name='file' id='fileInput' accept='image/*' style='display: none;' />");
                        //sb.AppendLine("</form>" );


                    }
                    sb.AppendLine("</div></div>");
                    // Assign the generated HTML markup to the Literal control
                    picturesHtmlLiteral.Text = sb.ToString();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        public void loadVideos()
        {
            // open connection with DB 
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    var query = "SELECT TOP (1000) [id] ,[user_id] ,[type] ,[path_url] FROM [Picture_Video]  where [type]='video' and user_id='" + this.footballerId + "'";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter adapt = new SqlDataAdapter(query, connection);
                    DataSet ds = new DataSet();
                    adapt.Fill(ds);
                    dt = ds.Tables[0];
                    connection.Close();
                    Response.Write("");
                    // Create a StringBuilder to build the HTML markup
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine("<div class='card-header d-flex align-items-center justify-content-between'><div class='header-title'><h4 class='card-title'>My Videos</h4></div><span>"+dt.Rows.Count+"/4</span></div><div class='card-body'  ><div class='d-grid gap-card grid-cols-2'>");
                    int j = 1;
                    foreach (DataRow row in dt.Rows)
                    {
                        // Append the HTML markup for the image gallery to the StringBuilder
                        sb.AppendLine("<a id= '" + row["id"].ToString() + "'  data - fslightbox =\"gallery\" href = \"" + row["path_url"].ToString() + "\" ><img src = \"" + row["path_url"].ToString() + "\"class=\"img-fluid bg-soft-info rounded\" alt=\"profile-image\"></a>");
                        j++;
                    }
                    if (dt.Rows.Count < 4)
                    {
                        sb.AppendLine("<a href='javascript:void(0);' onclick='openFileInput()'><img src='add2.jpg' class='img-fluid bg-soft-info rounded' alt='profile-image'></a>");
                        sb.AppendLine("<input type='file' id='fileInputv' style='display: none;' onchange='uploadPicture()' />");

                    }
                    sb.AppendLine("</div></div>");
                    // Assign the generated HTML markup to the Literal control
                    videosHtmlLiteral.Text = sb.ToString();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        public void AddPicture()
        {
            if (Request.Files.Count > 0)
            {
                try
                {
                    // Get the uploaded file
                    HttpPostedFile file = Request.Files[0];

                    // Validate the file and handle any errors (e.g., size, format, etc.)

                    // Save the picture to the server (you can use a unique filename to avoid conflicts)
                    string filename = Guid.NewGuid().ToString() + Path.GetExtension(file.FileName);
                    string uploadDirectory = "your_upload_directory"; // Replace with the actual directory path
                    string filePath = Path.Combine(uploadDirectory, filename);
                    file.SaveAs(filePath);

                    // Now, save the file path or relevant information to the database (you can use the SqlConnection and SqlCommand objects as in the loadPictures() function)

                    // Optionally, redirect back to the same page after successful upload
                    Response.Redirect(Request.Url.ToString());
                }
                catch (Exception ex)
                {
                    Response.Write("Error uploading picture: " + ex.Message);
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
                    var height = txtHeight.Text;
                    var weight = txtWeight.Text;
                    var club = txtClub.Text;
                    var positionv =position.Text ;
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
                        tableName = "FootballerDescription";
                        query = $"Update {tableName} set description=@Description where footballer=@FootballerId";
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@Description", description);
                            command.Parameters.AddWithValue("@FootballerId", footballerId);


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
                    tableName = "Footballer";
                    query = $"Update {tableName} SET PhotoID=@PhotoId , Email=@Email, Username=@Username,FirstName=@FirstName, LastName=@LastName, PhoneNumber=@PhoneNumber, DateOfBirth=@DateOfBirth, Height=@Height, Weight=@Weight, Club=@Club,PositionName=@Position where id=@FootballerId";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {

                        if (string.IsNullOrEmpty(username))
                        {
                            command.Parameters.AddWithValue("@Username", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@Username", username);
                        }
                        if (string.IsNullOrEmpty(id.ToString()))
                        {
                            command.Parameters.AddWithValue("@PhotoId", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@PhotoId", id);
                        }
                        if (string.IsNullOrEmpty(positionv))
                        {
                            command.Parameters.AddWithValue("@Position", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@Position", positionv);
                        }
                        if (string.IsNullOrEmpty(phoneNumber))
                        {
                            command.Parameters.AddWithValue("@PhoneNumber", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
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
                        if (string.IsNullOrEmpty(height))
                        {
                            command.Parameters.AddWithValue("@Height", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@Height", height);
                        }
                        if (string.IsNullOrEmpty(weight))
                        {
                            command.Parameters.AddWithValue("@Weight", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@Weight", weight);
                        }
        
                        if (string.IsNullOrEmpty(club))
                        {
                            command.Parameters.AddWithValue("@Club", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@Club", club);
                        }
                       
                        if (string.IsNullOrEmpty(footballerId))
                        {
                            command.Parameters.AddWithValue("@FootballerId", DBNull.Value);
                        }
                        else
                        {
                            command.Parameters.AddWithValue("@FootballerId", footballerId);
                        }
                        // Execute the SQL query 
                        command.ExecuteNonQuery();
                        loadPage();
                    }


                }
                catch (SqlException ex)
                {
                    // Handle any exceptions here
                }
            }

        }

        //public void AddPicture()
        //{
        //    string filename = Request["filename"].ToString();
        //    string currentDirectory = Environment.CurrentDirectory;
        //    //if (fileUpload.HasFile) { }
        //    //// Combine the current directory with the image file name to get the full path.
        //    //string imageFullPath = Path.Combine(currentDirectory, Path.GetFileName(filename));

        //        //// Copy the image file to the current folder.
        //        //File.Copy(filename, imageFullPath);
        //        //fileUpload.Hasfile

        //}




    }
}
