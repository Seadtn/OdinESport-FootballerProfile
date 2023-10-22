using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.agents
{
    public partial class Footballeurs : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;
        public string AgentId = string.Empty;
        public string FootballerId = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

            AgentId = Request.QueryString["id"];
            if (Request.QueryString["footballerId"] != null)
            {
                FootballerId = Request.QueryString["footballerId"];
            }
            if (!IsPostBack)
            {
                // Load all data initially when the page loads
                LoadData();

                if (AgentId != "" && AgentId != null && FootballerId != "" && FootballerId != null)
                {
                    NotifAdministration(int.Parse(AgentId), FootballerId);
                    LoadData();
                }
            }

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            // Get the values from the input fields
            string age = Request.Form["ctl00$ContentPlaceHolder1$age"];
            string country = Request.Form["ctl00$ContentPlaceHolder1$country"];
            string foot = string.Empty;

            if (flexRadioDefault1.Checked)
            {
                foot = "Left";
            }
            else if (flexRadioDefault2.Checked)
            {
                foot = "Right";
            }
            else if (flexRadioDefault3.Checked)
            {
                foot = "Both";
            }

            // SQL query to search for data based on the input
            string query = "select Footballer.id as FootballerId, [Photo].id ,FirstName, LastName, Path as Profile,DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age, Country, DateOfBirth ,Foot, Height, Weight,PositionName  FROM [Footballer],[Photo] where [Photo].id =[Footballer].PhotoID ";
            if (age != "")
            {
                query += " AND DATEDIFF(YEAR, DateOfBirth, GETDATE()) ='" + age + "' ";
            }
            if (country != "")
            {
                query += " AND Country LIKE '%" + country + "%'";
            }
            if (foot != "")
            {

                query += " AND Foot ='" + foot + "';";
            }



            // Create a connection and data adapter to execute the query
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(query, connection))
                {
                    // Set the parameters for the search terms
                    adapter.SelectCommand.Parameters.AddWithValue("@Age", age);
                    adapter.SelectCommand.Parameters.AddWithValue("@Country", country);
                    adapter.SelectCommand.Parameters.AddWithValue("@Foot", foot);

                    // Create a DataTable to hold the search results
                    DataTable searchResultTable = new DataTable();

                    // Fill the DataTable with the search results from the database
                    adapter.Fill(searchResultTable);

                    // Generate the HTML table dynamically
                    StringBuilder tableHtml = new StringBuilder();
                    tableHtml.Append("<table id='user-list-table' class='table table-striped' role='grid' data-toggle='data-table'>");

                    // Add the table header
                    tableHtml.Append("<thead>");
                    tableHtml.Append("<tr class='light'>");
                    tableHtml.Append("<th>ID</th>");
                    tableHtml.Append("<th>Profile</th>");
                    tableHtml.Append("<th>Full name</th>");
                    tableHtml.Append("<th>Age</th>");
                    tableHtml.Append("<th>Country</th>");
                    tableHtml.Append("<th>Date of birth</th>");
                    tableHtml.Append("<th>Position</th>");
                    tableHtml.Append("<th>Foot</th>");
                    tableHtml.Append("<th>Height</th>");
                    tableHtml.Append("<th>Weight</th>");
                    tableHtml.Append("<th style='min-width: 100px'>Action</th>");
                    tableHtml.Append("</tr>");
                    tableHtml.Append("</thead>");

                    // Add the table body with rows from the search results
                    tableHtml.Append("<tbody>");
                    foreach (DataRow row in searchResultTable.Rows)
                    {
                        DateTime dateOfBirth;
                        if (DateTime.TryParseExact(row["DateOfBirth"].ToString(), "your_date_format_here", CultureInfo.InvariantCulture, DateTimeStyles.None, out dateOfBirth))
                        {
                            row["DateOfBirth"] = dateOfBirth;
                        }
                        tableHtml.Append("<tr>");
                        tableHtml.Append("<td>" + row["FootballerId"] + "</td>");
                        tableHtml.Append("<td class='text-center'><img class='bg-soft-primary rounded img-fluid avatar-40 me-3' src='" + row["Profile"] + "' alt='profile'></td>");
                        tableHtml.Append("<td>" + row["FirstName"] + " " + row["LastName"] + "</td>");
                        tableHtml.Append("<td>" + row["Age"] + "</td>");
                        tableHtml.Append("<td>" + row["Country"] + "</td>");
                        tableHtml.Append("<td>" + row["DateOfBirth"] + "</td>");
                        tableHtml.Append("<td>" + row["PositionName"] + "</td>");
                        tableHtml.Append("<td>" + row["Foot"] + "</td>");
                        tableHtml.Append("<td>" + row["Height"] + " m</td>");
                        tableHtml.Append("<td>" + row["Weight"] + "kg</td>");
                        tableHtml.Append("<td>");
                        tableHtml.Append("<div class='flex align-items-center list-user-action'>");
                        tableHtml.Append("<a class='btn btn-sm btn-icon btn-success' data-toggle='tooltip' data-placement='top' title='' data-original-title='Add' href='#' onclick=\"NotifAdministration(" + row["FootballerId"] + ",'" + AgentId + "')\">");
                        tableHtml.Append("<span class='btn-inner'><svg width='32' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg' ><path fill-rule='evenodd' clip-rule='evenodd' d='M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path><path fill-rule='evenodd' clip-rule='evenodd' d='M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path><path d='M19.2036 8.66919V12.6792' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path><path d='M21.2497 10.6741H17.1597' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path></svg></span>");
                        //  tableHtml.Append("</span>");
                        tableHtml.Append("</a>");
                        tableHtml.Append("<a class='btn btn-sm btn-icon btn-warning' data-toggle='tooltip' data-placement='top' title='' data-original-title='Edit' href='ProfilFootballeur.aspx?idp=" + row["FootballerId"] + "'>");
                        tableHtml.Append("<span class='btn-inner'><svg width = '20' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'>");
                        tableHtml.Append("<path d = 'M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path>");
                        tableHtml.Append("<path fill-rule='evenodd' clip-rule='evenodd' d='M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path>");
                        tableHtml.Append("<path d = 'M15.1655 4.60254L19.7315 9.16854' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path>");
                        tableHtml.Append("</svg>");
                        tableHtml.Append("</span>");
                        // tableHtml.Append("</span>");
                        tableHtml.Append("</a>");
                        tableHtml.Append("</div>");
                        tableHtml.Append("</td>");
                        tableHtml.Append("</tr>");
                    }
                    tableHtml.Append("</tbody>");

                    tableHtml.Append("</table>");

                    // Assign the generated HTML to the div's InnerHtml
                    userlisttable.InnerHtml = tableHtml.ToString();
                }
            }
        }

        protected void LoadData()
        {
            // SQL query to retrieve all data from the database
            string query = "  select [Photo].id ,[Footballer].id as FootballerId ,FirstName, LastName,Path as Profile,DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age, Country, DateOfBirth ,Foot, Height, Weight,PositionName  FROM [Footballer],[Photo] where [Photo].id =[Footballer].PhotoID";

            // Create a connection and data adapter to execute the query
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(query, connection))
                {
                    // Create a DataTable to hold the data
                    DataTable dataTable = new DataTable();

                    try
                    {
                        connection.Open();
                        adapter.Fill(dataTable);


                    }
                    catch (SqlException ex)
                    {
                    }
                    // Generate the HTML table dynamically
                    StringBuilder tableHtml = new StringBuilder();
                    tableHtml.Append("<table id='user-list-table' class='table table-striped' role='grid' data-toggle='data-table'>");

                    // Add the table header
                    tableHtml.Append("<thead>");
                    tableHtml.Append("<tr class='light'>");
                    tableHtml.Append("<th>ID</th>");
                    tableHtml.Append("<th>Profile</th>");
                    tableHtml.Append("<th>Full name</th>");
                    tableHtml.Append("<th>Age</th>");
                    tableHtml.Append("<th>Country</th>");
                    tableHtml.Append("<th>Date of birth</th>");
                    tableHtml.Append("<th>Position</th>");
                    tableHtml.Append("<th>Foot</th>");
                    tableHtml.Append("<th>Height</th>");
                    tableHtml.Append("<th>Weight</th>");
                    tableHtml.Append("<th style='min-width: 100px'>Action</th>");
                    tableHtml.Append("</tr>");
                    tableHtml.Append("</thead>");

                    // Add the table body with rows from the data
                    tableHtml.Append("<tbody>");
                    foreach (DataRow row in dataTable.Rows)
                    {
                        DateTime dateOfBirth;
                        if (DateTime.TryParseExact(row["DateOfBirth"].ToString(), "your_date_format_here", CultureInfo.InvariantCulture, DateTimeStyles.None, out dateOfBirth))
                        {
                            row["DateOfBirth"] = dateOfBirth;
                        }
                        tableHtml.Append("<tr>");
                        tableHtml.Append("<td>" + row["FootballerId"] + "</td>");
                        tableHtml.Append("<td class='text-center'><img class='bg-soft-primary rounded img-fluid avatar-40 me-3' src='" + row["Profile"] + "' alt='profile'></td>");
                        tableHtml.Append("<td>" + row["FirstName"] + " " + row["LastName"] + "</td>");
                        tableHtml.Append("<td>" + row["Age"] + "</td>");
                        tableHtml.Append("<td>" + row["Country"] + "</td>");
                        tableHtml.Append("<td>" + row["DateOfBirth"] + "</td>");
                        tableHtml.Append("<td>" + row["PositionName"] + "</td>");
                        tableHtml.Append("<td>" + row["Foot"] + "</td>");
                        tableHtml.Append("<td>" + row["Height"] + " m</td>");
                        tableHtml.Append("<td>" + row["Weight"] + "kg</td>");
                        tableHtml.Append("<td>");
                        tableHtml.Append("<div class='flex align-items-center list-user-action'>");
                        tableHtml.Append("<a class='btn btn-sm btn-icon btn-success' data-toggle='tooltip' data-placement='top' title='' data-original-title='Add' href='#' onclick=\"NotifAdministration(" + row["FootballerId"] + ",'" + AgentId + "')\">");
                        tableHtml.Append("<span class='btn-inner'><svg width='32' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg' ><path fill-rule='evenodd' clip-rule='evenodd' d='M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path><path fill-rule='evenodd' clip-rule='evenodd' d='M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path><path d='M19.2036 8.66919V12.6792' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path><path d='M21.2497 10.6741H17.1597' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path></svg></span>");
                        //  tableHtml.Append("</span>");
                        tableHtml.Append("</a>");
                        tableHtml.Append("<a class='btn btn-sm btn-icon btn-warning' data-toggle='tooltip' data-placement='top' title='' data-original-title='Edit' href='ProfilFootballeur.aspx?idp=" + row["FootballerId"] + "'>");
                        tableHtml.Append("<span class='btn-inner'><svg width = '20' viewBox='0 0 24 24' fill='none' xmlns='http://www.w3.org/2000/svg'>");
                        tableHtml.Append("<path d = 'M11.4925 2.78906H7.75349C4.67849 2.78906 2.75049 4.96606 2.75049 8.04806V16.3621C2.75049 19.4441 4.66949 21.6211 7.75349 21.6211H16.5775C19.6625 21.6211 21.5815 19.4441 21.5815 16.3621V12.3341' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path>");
                        tableHtml.Append("<path fill-rule='evenodd' clip-rule='evenodd' d='M8.82812 10.921L16.3011 3.44799C17.2321 2.51799 18.7411 2.51799 19.6721 3.44799L20.8891 4.66499C21.8201 5.59599 21.8201 7.10599 20.8891 8.03599L13.3801 15.545C12.9731 15.952 12.4211 16.181 11.8451 16.181H8.09912L8.19312 12.401C8.20712 11.845 8.43412 11.315 8.82812 10.921Z' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path>");
                        tableHtml.Append("<path d = 'M15.1655 4.60254L19.7315 9.16854' stroke='currentColor' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'></path>");
                        tableHtml.Append("</svg>");
                        tableHtml.Append("</span>");
                        // tableHtml.Append("</span>");
                        tableHtml.Append("</a>");
                        tableHtml.Append("</div>");
                        tableHtml.Append("</td>");
                        tableHtml.Append("</tr>");
                    }
                    tableHtml.Append("</tbody>");

                    tableHtml.Append("</table>");

                    // Assign the generated HTML to the div's InnerHtml
                    userlisttable.InnerHtml = tableHtml.ToString();
                }
            }
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static void NotifAdministration(int footballerId, string agentid)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;

            string query = "insert into [Notifications] (footballer_id, agent_id) VALUES (@FootballerId,@AgentId)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add the profileId parameter to the command
                    command.Parameters.AddWithValue("@AgentId", agentid);
                    command.Parameters.AddWithValue("@FootballerId", footballerId);

                    // Open the connection and execute the query
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

        }
    }
}




