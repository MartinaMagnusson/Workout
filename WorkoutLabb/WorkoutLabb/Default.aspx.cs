using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WorkoutLabb.Models;

namespace WorkoutLabb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            
            List<Activity>  activities = new List<Activity>();
            int value = 0;
            if (RadioButtonEasy.Checked)
                value = 1;
            if (RadioButtonMedium.Checked)
                value = 2;
            if (RadioButtonHard.Checked)
                value = 3;
            var sum = int.Parse(TextBoxRunningTime.Text) * value;
            
            Label1.Text = sum.ToString();
       activities.Add(new Activity()
       {
           
       });
        }
    }
}