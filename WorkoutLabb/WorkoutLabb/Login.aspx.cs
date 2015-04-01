using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WorkoutLabb.Models;

namespace WorkoutLabb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           //DAL.Authenticate(TextBoxUserName.Text, TextBoxPassword.Text);
            if (DAL.UserID != 0)
            {
                LabelError.Text = "Correct Name or Password";
                Response.Redirect("Default.aspx");
            }
            else
            {
                LabelError.Text = "Wrong Name or Password";
            }
        }
    }
}