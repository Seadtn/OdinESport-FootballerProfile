using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.Administation
{
    public partial class ProfilAgent : System.Web.UI.Page
    {
        #region Attributes
        public string agentId = string.Empty;
        string connectionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;

        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                agentId = Request.QueryString["id"];
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            if (!IsPostBack)
            {
                if (agentId != "")
                {

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        try
                        {
                            connection.Open();
                            string qry = "SELECT * FROM Agent WHERE id = " + agentId;
                            SqlCommand cmd = new SqlCommand(qry, connection);
                            cmd.Parameters.AddWithValue("@agentId", agentId);

                            SqlDataReader reader = cmd.ExecuteReader();
                            if (reader.Read())
                            {


                                string firstName = reader["FirstName"].ToString();
                                string lastName = reader["LastName"].ToString();
                                string email = reader["email"].ToString();
                                string password = reader["Password"].ToString();
                                string phNo = reader["PhoneNumber"].ToString();
                                string Country = reader["Country"].ToString();
                                string DateOfBirth = reader["DateOfBirth"].ToString();
                                string PhotoID = reader["PhotoID"].ToString();
                                string Username = reader["Username"].ToString();
                                string fullName= firstName+" "+lastName;
                                lblFullName.Text = fullName; 
                                lblEmail.InnerHtml = email;
                                UserName.InnerHtml= Username;
                                Psw.InnerHtml = password;
                                Fname.InnerHtml = firstName;
                                Lname.InnerHtml = lastName;
                                ContactVal.InnerHtml = phNo;
                                DateOfBirthVal.InnerHtml = DateOfBirth;
                                CountryVal.InnerHtml= Country;
                                reader.Close();
                                string qry1 = "SELECT Path FROM Photo WHERE id = @PhotoID";
                                SqlCommand cmd1 = new SqlCommand(qry1, connection);
                                cmd1.Parameters.AddWithValue("@PhotoID", PhotoID);

                                SqlDataReader reader1 = cmd1.ExecuteReader();
                                if (reader1.Read())
                                {
                                    string photoPath = reader1["Path"].ToString();
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
    }
}