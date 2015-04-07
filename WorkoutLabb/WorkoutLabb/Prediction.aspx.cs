using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit.HTMLEditor.Popups;
using WorkoutLabb.Logic;
namespace WorkoutLabb
{
    public partial class Placeholder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBoxWeightGoal_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBoxTimeToGoal_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void CalendarPrediction_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxDate.Text = CalendarPrediction.SelectedDate.ToShortDateString();
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {           
            int start = int.Parse(TextBoxLiftedWeight.Text);
            int finish = int.Parse(TextBoxWeightGoal.Text);
            if (finish > start)
            {
                LabelGoal.Text = TextBoxWeightGoal.Text;
                int sum = finish - start;
                int total = sum * 7;
                LabelTotal.Text = CalendarPrediction.SelectedDate.AddDays(total).ToShortDateString();
                CalendarPrediction.SelectedDate = Convert.ToDateTime(LabelTotal.Text);
                ButtonSubmit.Visible = false;
            }
            else
            {
                LabelNotAllowed.Visible = true;
            }
        }

        protected void ButtonClearField_Click(object sender, EventArgs e)
        {
            TextBoxDate.Text = string.Empty;
            TextBoxLiftedWeight.Text = string.Empty;
            TextBoxWeightGoal.Text = string.Empty;
            LabelTotal.Text = string.Empty;
            ButtonSubmit.Visible = true;
            LabelNotAllowed.Visible = false;
        }
    }
}