using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WorkoutLabb.Models
{
    public class Workout
    {
        public Workout()
        {
            
        }

        public Workout(List<Activity> activities, DateTime traningDate)
        {
            Activities = activities;
            TraningDate = traningDate;
        }

        public int ID { get; set; }
        public int UserID { get; set; }
        public DateTime TraningDate { get; set; }
        public virtual List<Activity> Activities { get; set; } 
    }
}