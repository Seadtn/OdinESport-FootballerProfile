using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.Administation
{
    public partial class ProfilFootballeur : System.Web.UI.Page
    {
        #region Attributes
        public string footballerId = string.Empty;
        string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                footballerId = Request.QueryString["id"];
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            if (!IsPostBack)
            {
                loadPictures();
                loadVideos();
                if (footballerId != "")
                {

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        try
                        {
                            connection.Open();
                            string qry = "SELECT * FROM Footballer WHERE id = " + footballerId;
                            SqlCommand cmd = new SqlCommand(qry, connection);
                            cmd.Parameters.AddWithValue("@FootballerId", footballerId);

                            SqlDataReader reader = cmd.ExecuteReader();
                            if (reader.Read())
                            {
                                string firstName = reader["FirstName"].ToString();
                                string password = reader["Password"].ToString();
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

                                PasswordVal.InnerHtml = password;
                                UsernameVal.InnerHtml = Username;
                                EmailVal.InnerHtml = email;
                                FnameVal.InnerHtml = firstName;
                                LnameVal.InnerHtml = lastName;
                                ContactVal.InnerHtml = phNo;
                                DateOfBirthValVal.InnerHtml = DateOfBirth;
                                CountryVal.InnerHtml = Country;
                                fullName.InnerHtml = firstName + " " + lastName;
                                FootVal.InnerHtml = Foot;
                                ClubVal.InnerHtml = Club;
                                HeightVal.InnerHtml = Height+" m";
                                WeightVal.InnerHtml = Weight+"kg";
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
                    var query = "SELECT TOP (1000) [id] ,[user_id] ,[type] ,[path_url] FROM [Picture_Video]  where [type]='picture' and user_id='" + this.footballerId + "'";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter adapt = new SqlDataAdapter(query, connection);
                    DataSet ds = new DataSet();
                    adapt.Fill(ds);
                    dt = ds.Tables[0];
                    connection.Close();
                    Response.Write("");
                    // Create a StringBuilder to build the HTML markup
                    StringBuilder sb = new StringBuilder();
                    sb.AppendLine("<div class='card-header d-flex align-items-center justify-content-between'><div class='header-title'><h4 class='card-title'>My Pictures</h4></div><span>" + dt.Rows.Count + "/8</span></div><div class='card-body'  ><div class='d-grid gap-card grid-cols-2'>");

                    int j = 1;

                    foreach (DataRow row in dt.Rows)
                    {
                        // Append the HTML markup for the image gallery to the StringBuilder
                        sb.AppendLine("<a id = '" + row["id"].ToString() + "' data - fslightbox =\"gallery\" href=\"" + row["path_url"].ToString() + "\"><img src = \"" + row["path_url"].ToString() + "\" class=\"img-fluid bg-soft-info rounded\" alt=\"profile-image\"></a>");
                        j++;
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
                    sb.AppendLine("<div class='card-header d-flex align-items-center justify-content-between'><div class='header-title'><h4 class='card-title'>My Videos</h4></div><span>" + dt.Rows.Count + "/4</span></div><div class='card-body'  ><div class='d-grid gap-card grid-cols-2'>");
                    int j = 1;
                    foreach (DataRow row in dt.Rows)
                    {
                        // Append the HTML markup for the image gallery to the StringBuilder
                        sb.AppendLine("<a id= '" + row["id"].ToString() + "'  data - fslightbox =\"gallery\" href = \"" + row["path_url"].ToString() + "\" ><img src = \"" + row["path_url"].ToString() + "\"class=\"img-fluid bg-soft-info rounded\" alt=\"profile-image\"></a>");

                        j++;
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



    }
}