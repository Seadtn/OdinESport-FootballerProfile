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

namespace OdinESport.Administration
{
    public partial class Pictures : System.Web.UI.Page
    {
        #region Attributes
        string connectionString = string.Empty;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;

            if (!IsPostBack)
            {
                loadPictures();
            }
        }

        protected void onSubmit(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    var picPath = string.Empty;
                    string fileName = "";
                    var pictureTitle = PictureTitle.Text;
                    if (fileUpload.HasFile)
                    {
                        // Specify the directory path where you want to save the photo
                        string uploadFolderPath = Server.MapPath("~/Pictures/Pictures/");

                        if (!Directory.Exists(uploadFolderPath))
                        {
                            Directory.CreateDirectory(uploadFolderPath);
                        }

                        fileName = Path.GetFileName(fileUpload.FileName);
                        string filePath = Path.Combine(uploadFolderPath, fileName);

                        fileUpload.SaveAs(filePath);
                        picPath = filePath;



                    }
                    string tableName = "Pictures";
                    string query = $"INSERT INTO {tableName} ([title],[path]) VALUES ('"+ pictureTitle + "','/Pictures/Pictures/" + fileName + "')";

                    connection.Open();

                    

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the SqlCommand
                       

                        command.ExecuteNonQuery();
                    }

                    connection.Close();

                    loadPictures();
                }
                catch (SqlException ex)
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
                    var query = "SELECT TOP (1000) [id],[title] ,[path] FROM [Pictures] order by [creation_date] desc";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter adapt = new SqlDataAdapter(query, connection);
                    DataSet ds = new DataSet();
                    adapt.Fill(ds);
                    dt = ds.Tables[0];
                    connection.Close();
                    Response.Write("");
                    // Create a StringBuilder to build the HTML markup
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine("");

                    int j = 1;

                    foreach (DataRow row in dt.Rows)
                    {
                        // Append the HTML markup for the image gallery to the StringBuilder
                        sb.AppendLine("<div class='card-header d-flex align-items-center justify-content-between pb-4'><div class='header-title'><div class='d-flex flex-wrap'><div class='media-support-user-img me-3'><img class='rounded-pill img-fluid avatar-60   p-1 ps-2' src='../assets/images/LOGO%20V3%20COLORS.svg' alt=''></div><div class='media-support-info mt-2'><h5 class='mb-0'>" + row["title"].ToString() + "</h5></div></div></div></div>");

                        sb.AppendLine("<div class='card-body p-0'><div class='user-post'><a href='javascript:void(0);'><img src='" + row["path"].ToString() + "' alt='post-image' class='img-fluid'></a></div> </div></div>");
                        j++;
                    }

                    // Assign the generated HTML markup to the Literal control
                    picturesHtmlLiteral.Text = sb.ToString();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }


    }

}