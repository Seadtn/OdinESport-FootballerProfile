﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.Administration
{
    public partial class News : System.Web.UI.Page
    {
        #region Attributes
        string connectionString = string.Empty;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;

            if (!IsPostBack)
            {
                isurl.SelectedValue = "False";
                loadNews();
            }
        }

        protected void onSubmit(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    string tableName = "News";
                    string query = $"INSERT INTO {tableName} ([title],[news],[isurl]) VALUES (@NewsTitle, @NewsValue,@IsURL)";

                    connection.Open();

                    var newsTitle = NewsTitle.Text;
                    var newsValue = NewsValue.Text;
                    var isURL = isurl.SelectedValue;
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the SqlCommand
                        command.Parameters.AddWithValue("@NewsTitle", newsTitle);
                        command.Parameters.AddWithValue("@NewsValue", newsValue);
                        command.Parameters.AddWithValue("@IsURL", isURL);
                        command.ExecuteNonQuery();
                    }

                    connection.Close();
                    NewsTitle.Text = string.Empty;
                    NewsValue.Text = string.Empty;
                    loadNews();
                }
                catch (SqlException ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
        public void loadNews()
        {
            // open connection with DB 
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    var query = "SELECT TOP (1000) [id],[title] ,[news] ,[isurl]  FROM [News] order by [creation_date] desc";
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
                        sb.AppendLine("<div class='card-header d-flex align-items-center justify-content-between pb-4'><div class='header-title'><div class='d-flex flex-wrap'><div class='media-support-user-img me-3'><img class='rounded-pill img-fluid avatar-60   p-1 ps-2' src='../assets/images/LOGO%20V3%20COLORS.svg' alt=''></div><div class='media-support-info mt-2'><h5 class='mb-0'>"+ row["title"].ToString() + "</h5></div></div></div></div>");
                        if (row["isurl"].ToString() == "True") { 
                        sb.AppendLine("<div class='card-body p-0'><div class='user-post'><a href='javascript:void(0);'/><iframe width='100%' height='480' src='" + row["news"].ToString() + "' frameborder='0' allowfullscreen></iframe></div></div>");
                        }
                        else
                        { 
                        sb.AppendLine("<div class=\"card-body p-0\"><p class=\"p-3 mb-0\">" + row["news"].ToString() + " </p></div>");
                        }
                        j++;
                    }
                   
                    // Assign the generated HTML markup to the Literal control
                    NewsHtmlLiteral.Text = sb.ToString();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }


    }

}
