using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WorkoutLabb.Models
{
    public class User
    {
        public User()
        {
            
        }
        public User(string password, string userName, List<Activity> activities)
        {          
            Password = password;
            UserName = userName;
            Activities = activities;
        }

        public int ID { get; set; }
        public string Password { get; set; }
        public string UserName { get; set; }
        public List<Activity> Activities { get; set; }

    }
}