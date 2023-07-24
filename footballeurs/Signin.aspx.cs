using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.footballeurs
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void signInFoot_Click(object sender, EventArgs e)
        {
            // open connection with DB
            //Updated by jihen 23-07-2023
            string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;//"Server=DESKTOP-533HDB7; Database=OdinESport; User Id=sa; Password=test.123; TrustServerCertificate=True;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    var email = Request.Form["email"];
                    var pass = Request.Form["password"];
                    var qry = "select * from Footballer where Email='" + email + "' and Password='" + pass + "'";
                    SqlCommand cmd = new SqlCommand(qry, connection);
                    //SqlDataReader sdr = cmd.ExecuteReader();
                    int footballerId = (int?)cmd.ExecuteScalar() ?? 0; // Retrieve the footballer ID

                    if (footballerId > 0)
                    {
                        // Redirect to the profile page with the footballer ID as a parameter
                        Response.Redirect("Profil.aspx?id=" + footballerId);
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