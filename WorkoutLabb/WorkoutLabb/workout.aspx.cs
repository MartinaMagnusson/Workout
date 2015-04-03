using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WorkoutLabb.Models;

namespace WorkoutLabb
{
    public partial class workout : System.Web.UI.Page
    {
        public int WorkoutID { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            var list = new List<Activity>();
            var listOfActivites = new List<string>();

            foreach (var activity in Enum.GetValues(typeof(ActivityEnum)))
            {
                var item = new Activity();
                item.WorkoutType = activity.ToString();
                list.Add(item);
                
            }



            Activity item1 = new Activity();
            item1.WorkoutType = "Swimming";

            Activity item2 = new Activity();
            item2.WorkoutType = "Running";

            list.Add(item1);
            list.Add(item2);

            ListViewActivityEnum.DataSource = list;
            ListViewActivityEnum.DataBind();
        }

        protected void CheckTimeOrSetsCheckedEvent(object sender, EventArgs e)
        {

           // Label1.Text = "hej";
            var radioButton = sender as RadioButton;
            if (radioButton != null)
            {
                if (radioButton.Checked)
                {
                    if (radioButton.ID == "RadioButtonTime")
                    {
                        //TextBoxWorkoutTime.Visible = true;
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

        protected void ButtonAddUserTest_Click(object sender, EventArgs e)
        {
            var user = new TestClass() {Name = "Jalapeno"};

            DAL.InsertTest(user);

        }

        protected void ButtonShowInsertTemplate_Click(object sender, EventArgs e)
        {
            

            //ListView1.InsertItem.Visible = true;  
   

        }

        protected void ButtonAddNewWorkout_Click(object sender, EventArgs e)
        {
            WorkoutID = DAL.CreateNewWorkout();
            //LabelWourkoutID.Text = WorkoutID.ToString();
        }

        protected void ListViewActivityEnum_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSaveNewActivity_Command(object sender, CommandEventArgs e)
        {
            
            LinkButton btn = sender as LinkButton;

            ListViewDataItem item = btn.NamingContainer as ListViewDataItem;
            Label activityNameLabel = item.FindControl("ActivityNameID") as Label;
            LabelTestMessage.Text = activityNameLabel.Text;
            //TextBox tbox = item.FindControl("TextBoxQuantity") as TextBox;
        }
    }
}