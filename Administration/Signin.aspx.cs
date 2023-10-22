using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.Administration
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void signInAgent_Click(object sender, EventArgs e)
        {
            // open connection with DB
            //Updated by jihen 23-07-2023
            string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    var email = Request.Form["email"];
                    var pass = Request.Form["password"];
                    var qry = "select * from Administration where login='" + email + "' and password='" + pass + "'";
                    SqlCommand cmd = new SqlCommand(qry, connection);
                    int administrationId = (int?)cmd.ExecuteScalar() ?? 0; // Retrieve the agent ID

                    if (administrationId > 0)
                    {
                        Response.Redirect("Feed.aspx");
                        return;
                    }



                    else
                    {
                        // Set the error message
                        string errorMessage = "Your email or password is not correct. Please try again.";

                        // Register a startup script to display the pop-up message
                        string script = "<script type='text/javascript'>" +
                                        "var popupText = document.getElementById('popupText');" +
                                        "popupText.innerText = '" + errorMessage + "';" +
                                        "var popup = document.getElementById('popupMessage');" +
                                        "popup.style.display = 'block';" +
                                        "</script>";

                        // Add the script to the page
                        ClientScript.RegisterStartupScript(this.GetType(), "ShowPopup", script);

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