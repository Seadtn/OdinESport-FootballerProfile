using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.Administration
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call a method to fetch notifications from the database
                DataTable dtNotifications = GetNotificationsFromDatabase();

                // Bind the notifications to the dropdown menu
                BindNotificationsToDropdown(dtNotifications);
            }
        }

        private DataTable GetNotificationsFromDatabase()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;
            DataTable dtNotifications = new DataTable();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT [creation_date], Footballer.FirstName as FFirstName,Footballer.LastName as FLastName ,Agent.FirstName AS AFirstName ,Agent.LastName as ALastName FROM Footballer,Agent,Notifications where footballer_id=Footballer.id and agent_id=Agent.id  ORDER BY Notifications.creation_date DESC"; 
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                dtNotifications.Load(reader);
            }

            return dtNotifications;
        }

        private void BindNotificationsToDropdown(DataTable dtNotifications)
        {
            if (dtNotifications.Rows.Count > 0)
            {
                foreach (DataRow row in dtNotifications.Rows)
                {
                    // Get the notification data from the DataTable and construct the HTML elements for each notification
                    string footballer_full_name = row["FFirstName"].ToString() + " " + row["FLastName"].ToString();
                    string agent_full_name = row["AFirstName"].ToString() + " " + row["ALastName"].ToString();
                    string timestamp = Convert.ToDateTime(row["creation_date"]).ToString("dd MMM yyyy");

                    string notificationHtml = $@"
                    <a href='#' class='iq-sub-card'>
                        <div class='d-flex align-items-center'>
                            <img class='p-1 avatar-40 rounded-pill bg-soft-primary' src='../assets/images/shapes/01.png' alt=''>
                            <div class='ms-3 w-100'>
                                <h6 class='mb-0'></h6>
                                <div class='d-flex justify-content-between align-items-center'>
                                    <p class='mb-0'>The agent : {agent_full_name} Request the Footballer : {footballer_full_name}</p>
                                    <small class='float-end font-size-12'>{timestamp}</small>
                                </div>
                            </div>
                        </div>
                    </a>";

                    // Append the notification HTML to the dropdown menu
                    literalNotifications.Text += notificationHtml;
                }
            }
            else
            {
                // If no notifications are available, display a default message
                literalNotifications.Text = "<p>No notifications found.</p>";
            }
        }
    }
}
    