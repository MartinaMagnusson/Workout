﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using WorkoutLabb.Logic;
using WorkoutLabb.Models;
using System.Data.Entity;

namespace WorkoutLabb
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Database.SetInitializer(new WorkoutContextInitializer());
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["UserID"] = 0;
           Session["UserID"] = HelpClass.UserID;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}