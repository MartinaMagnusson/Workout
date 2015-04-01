using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WorkoutLabb.Models;

namespace WorkoutLabb
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DAL.UserID == 0)
            {
               // Response.Redirect("Default.aspx");
                //Response.Redirect("Login.aspx");
            }
            
        }
    }
}