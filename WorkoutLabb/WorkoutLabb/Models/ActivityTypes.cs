using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

namespace WorkoutLabb.Models
{

    
    public class ActivityTypes
    {
        public List<ActivityType> ActivityTypeList { get; set; }

        public ActivityTypes()
        {
            ActivityTypeList = new List<ActivityType>()
            {
                new ActivityType("Running"),
                new ActivityType("BenchPress", true),
                new ActivityType("Cycling"),
                new ActivityType("Indoor Rower"),
                new ActivityType("IndoorWalking"),
                new ActivityType("Dips"),
                new ActivityType("Curls", true)
            
            };
        }

        

        public class ActivityType
        {
            public string ActivityName { get; set; }
            public bool UsesSets { get; set; }

            public ActivityType(string activityName, bool usesSets = false)
            {
                ActivityName = activityName;
                UsesSets = usesSets;
            }
        }
        

    }
}