using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment
{
    public partial class _Default : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["v_username"] == null)
            {
                Response.Redirect("~/WebForm2.aspx");
            }
            else
            {
                int electionYear = 2019;
            }
        }
    }
}