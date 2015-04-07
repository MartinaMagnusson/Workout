using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
<<<<<<< HEAD
using WorkoutLabb.Logic;
=======
>>>>>>> b4d26dae58456c7b847ae3816006bdb9536ebaec
using WorkoutLabb.Models;

namespace WorkoutLabb
{
    public partial class workout : System.Web.UI.Page
    {
        public int WorkoutID { get; set; }
<<<<<<< HEAD
        public List<Activity> _activityList; 
        private ActivityTypes _activityTypes;
        public string DropdownSetFromSession { get; set; }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            /* Set Div where we add activities to visible false */
            DivCreateNewActivityID.Visible = false;
            /* Set the value from DropDownListActivities in a session to prevent the value to be erased in the page postback.
             * This value will be used later when we determine the user choice in the dropdown list */
            Session["ValueFromDropDown"] = DropDownListActivities.SelectedItem;
            
            /* prevent _activityList to be created if it already exist */
            if (_activityList == null)
            {
                _activityList = new List<Activity>();
            }
            _activityTypes = new ActivityTypes();

            var list = new List<Activity>();
            var listOfActivites = new List<string>();

            /* Set the Listview ListViewActivityEnum datasource to be ActivityEnum */
            ListViewActivityEnum.DataSource = _activityTypes.ActivityTypeList;
            ListViewActivityEnum.DataBind();



            /* enum to dropdownlist */
            // Populate DropDownListActicities only once when page loads. This to prevent duplicate values in the dropdown on page postbacks
            if (!IsPostBack)
            {
                var itemValues = System.Enum.GetNames(typeof(ActivityEnum));
                var itemNames = System.Enum.GetNames(typeof(ActivityEnum));

                for (int i = 0; i <= itemNames.Length - 1; i++)
                {

                    ListItem item = new ListItem(itemNames[i], itemValues[i]);
                    DropDownListActivities.Items.Add(item);
                }
            }
            


=======
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
>>>>>>> b4d26dae58456c7b847ae3816006bdb9536ebaec
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
<<<<<<< HEAD
            Session["WorkoutID"] = WorkoutID;
            LabelTestMessage.Text = "Created new workout with ID: " + WorkoutID;
            ButtonAddNewWorkout.Enabled = false;
            ListViewActivityEnum.Visible = true;
=======
            //LabelWourkoutID.Text = WorkoutID.ToString();
>>>>>>> b4d26dae58456c7b847ae3816006bdb9536ebaec
        }

        protected void ListViewActivityEnum_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSaveNewActivity_Command(object sender, CommandEventArgs e)
        {
<<<<<<< HEAD
            var activity = new Activity();
            //List<RepetitionSet> listOfRepetitionSets = PopulateRepetitionSetList(sender, e);
=======
>>>>>>> b4d26dae58456c7b847ae3816006bdb9536ebaec
            
            LinkButton btn = sender as LinkButton;

            ListViewDataItem item = btn.NamingContainer as ListViewDataItem;
            Label activityNameLabel = item.FindControl("ActivityNameID") as Label;
<<<<<<< HEAD
            //activity.WorkoutType = activityNameLabel.Text;
            DropDownList dropDownValue = item.FindControl("DropDownList1") as DropDownList;
            string GetDropdownValue = dropDownValue.SelectedValue;

            //activity.WorkoutType = ActivityEnum.Cycling.ToString();
            activity.Difficulty = DifficultyEnum.Easy;
            
            activity.TimeSpan = 12;
            activity.TraningDate = DateTime.Now;
            activity.HasSets = true;
            activity.WorkoutID = (int)Session["WorkoutID"];
            activity.WorkoutType = "Benchpress";
           

            int activityID = DAL.AddActivityToUserWorkout(activity);
            LabelTestMessage.Text = "Added activity with ID " + GetDropdownValue;

            //foreach (var repetitionSet in listOfRepetitionSets)
            //{
            //    DAL.AddRepetitionSetToActivity(repetitionSet, activityID);
            //}



            //newActivity.Difficulty = dropDownValue.SelectedValue;
            //LabelTestMessage.Text = dropDownValue.Text;


            //TextBox tbox = item.FindControl("TextBoxQuantity") as TextBox;
        }

        private List<RepetitionSet> PopulateRepetitionSetList(object sender, CommandEventArgs e)
        {
            var returnList = new List<RepetitionSet>();
            RepetitionSet repetitionset;

            LinkButton btn = sender as LinkButton;

            ListViewDataItem item = btn.NamingContainer as ListViewDataItem;

            for (int i = 1; i < 6; i++)
            {
                string textBoxWeight = "TextBoxWeight" + i;
                string textBoxNumberOfRepetition = "TextBoxNumberOfRepetition" + i;

                TextBox TextBoxWeight = item.FindControl(textBoxWeight) as TextBox;
                TextBox TextBoxNumberOfRepetition = item.FindControl(textBoxNumberOfRepetition) as TextBox;

                int weight;
                int repetition;
                bool weightOK = int.TryParse(TextBoxWeight.Text, out weight);
                bool RepetitionOK = int.TryParse(TextBoxNumberOfRepetition.Text, out repetition);

                if (weightOK && RepetitionOK && weight != 0 && repetition != 0)
                {
                    repetitionset = new RepetitionSet {Weight = weight, Repetition = repetition};
                    returnList.Add(repetitionset);
                }
                else
                {
                    return returnList;
                }


            }

            
            return returnList;
        }

        protected void ButtonAddWorkoutWithActivities_Click(object sender, EventArgs e)
        {
            
        }

        protected void AddActivityFromDropdownSelection(object sender, EventArgs e)
        {
            var GetDropdownValueFromSession = Session["ValueFromDropDown"];
            LabelTestMessage.Text = "Difficulyt: " + DropDownListActivityDifficulty.SelectedItem.ToString() + " " + GetDropdownValueFromSession.ToString();
            DivCreateNewActivityID.Visible = true;
        }

        //protected void ButtonAddNewWorkout_Click1(object sender, EventArgs e)
        //{
        //    WorkoutID = DAL.CreateNewWorkout();
            
        //}
        //protected object ProcessMyDataItem(object eval)
        //{
        //    var checkIfHasSets = eval is bool;
        //    if (checkIfHasSets)
        //    {
        //        CheckIfHasSets = (bool) eval;
        //    }
        //    return eval;

        //}
=======
            LabelTestMessage.Text = activityNameLabel.Text;
            //TextBox tbox = item.FindControl("TextBoxQuantity") as TextBox;
        }
>>>>>>> b4d26dae58456c7b847ae3816006bdb9536ebaec
    }
}