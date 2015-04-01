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
        public User(string password, string userName, DateTime joinGym, List<Workout> workouts)
        {          
            Password = password;
            UserName = userName;
            Workouts = workouts;
            JoinGym = joinGym;
        }

        public int ID { get; set; }
        public string Password { get; set; }
        public string UserName { get; set; }
        public virtual List<Workout> Workouts { get; set; }
        public DateTime JoinGym { get; set; }

    }
}