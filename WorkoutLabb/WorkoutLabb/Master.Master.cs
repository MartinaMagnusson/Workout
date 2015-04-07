using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WorkoutLabb.Models;
using System.IO;


namespace WorkoutLabb
{
    public partial class Master : System.Web.UI.MasterPage
    {
        private string _activePage;
        protected void Page_Load(object sender, EventArgs e)
        {
            SetActiveNavigation(Path.GetFileNameWithoutExtension(Page.AppRelativeVirtualPath));
            SetCurrentPage();
            

            if (DAL.UserID == 0)
            {
               // Response.Redirect("Default.aspx");
                //Response.Redirect("Login.aspx");
            }
            
        }

        private void SetActiveNavigation(string activePage)
        {
            _activePage = activePage;
            
        }

       

        private void SetCurrentPage()
        {


            switch (_activePage)
            {
                case "default":
                    defaultPage.Attributes["class"] = "current";
                    break;
                case "Default":
                    defaultPage.Attributes["class"] = "current";
                    break;
                case "workout":
                    workoutPage.Attributes["class"] = "current";
                    break;
                case "prediction":
                    predictionPage.Attributes["class"] = "current";
                    break;
                case "topscore":
                    topscorePage.Attributes["class"] = "current";
                    break;
                case "calories":
                    caloriesPage.Attributes["class"] = "current";
                    break;
            }
        }

        private string GetPageName()
        {
            return Request.Url.ToString().Split('/').Last();
        }
    }
}