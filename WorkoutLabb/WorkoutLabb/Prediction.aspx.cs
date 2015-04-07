using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
            TextBoxWeightGoal.Text = LabelGoal.Text;
        }

        protected void TextBoxTimeToGoal_TextChanged(object sender, EventArgs e)
        {
           // PredictCalc pc = new PredictCalc();
        }
    }
}