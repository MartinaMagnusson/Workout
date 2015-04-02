using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorkoutLabb
{
    public partial class Placeholder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBoxWeights_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxWeightGoal_TextChanged(object sender, EventArgs e)
        {
            TextBoxWeightGoal.Text = LabelGoal.Text;
        }

        protected void TextBoxAnswer_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void ButtonAmountWeights_Click(object sender, EventArgs e)
        {

        }
    }
}