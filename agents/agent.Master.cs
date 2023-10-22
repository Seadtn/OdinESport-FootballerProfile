using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OdinESport.agents
{
    public partial class agent : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    string idValue = Request.QueryString["id"];
                    Session["idValue"] = idValue;


                }
            }
        }

        protected void Profil_Click(object sender, EventArgs e)
        {

        }
    }
}