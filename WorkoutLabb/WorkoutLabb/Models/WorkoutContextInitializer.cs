using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace WorkoutLabb.Models
{
    public class WorkoutContextInitializer : DropCreateDatabaseAlways<WorkoutContext>
    {
        private List<User> _users; 
        public WorkoutContextInitializer()
        {
            _users = new List<User>(){new User(userName:"björk",password:"12345", 
                activities:new List<Activity>()
                {
                    new Activity("Running",500,30.52d)
                })};
        }
        public override void InitializeDatabase(WorkoutContext context)
        {
            _users.ForEach(u => context.Users.Add(u));
            base.InitializeDatabase(context);
        }
    }
}