using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace WorkoutLabb.Models
{
    public class WorkoutContext: DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Activity> Activities { get; set; }
        public DbSet<Workout> Workouts { get; set; }
        public DbSet<RepetitionSet> RepetitionSet { get; set; }
        public DbSet<TestClass> testClass { get; set; }
       
        public WorkoutContext()
        {
        }
    }
}