using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WorkoutLabb.Models
{
    public class WorkoutContextInitializer : DropCreateDatabaseAlways<WorkoutContext>
    {
        public WorkoutContextInitializer()
        {
            
        }
        public override void InitializeDatabase(WorkoutContext context)
        {
            base.InitializeDatabase(context);
        }
    }
}