using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkoutLabb
{
    public partial class workout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var list = new List<Activity>();

            Activity item1 = new Activity();
            item1.WorkoutType = "Swimming";

            Activity item2 = new Activity();
            item2.WorkoutType = "Running";

            list.Add(item1);
            list.Add(item2);

            listView.DataSource = list;
            listView.DataBind();
        }

        protected void CheckTimeOrSetsCheckedEvent(object sender, EventArgs e)
        {

            Label1.Text = "hej";
            var radioButton = sender as RadioButton;
            if (radioButton != null)
            {
                if (radioButton.Checked)
                {
                    if (radioButton.ID == "RadioButtonTime")
                    {
                        TextBoxWorkoutTime.Visible = true;
                    }
                    else if (radioButton.ID == "RadioButtonSets")
                    {
                       
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void ButtonSubmitWorkout_Click(object sender, EventArgs e)
        {
            
        }
    }
}