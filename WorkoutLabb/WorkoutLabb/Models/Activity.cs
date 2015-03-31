using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WorkoutLabb
{
    public class Activity
    {
        public Activity()
        {
            
        }
        public Activity(string activityName, int calories, double timeSpan)
        {
            ActivityName = activityName;
            Calories = calories;
            TimeSpan = timeSpan;
        }

        public int ID { get; set; }
        public string ActivityName { get; set; }
        public double TimeSpan { get; set; }
        public int Calories { get; set; }

    }
}