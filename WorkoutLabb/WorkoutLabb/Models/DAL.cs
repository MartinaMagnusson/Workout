using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ExceptionServices;
using System.Security.Cryptography;
using System.Web;
using System.Web.DynamicData;
using WorkoutLabb.Logic;

namespace WorkoutLabb.Models
{
    public class DAL
    {
        private  WorkoutContext _context;
        private static List<User> listOfUsers;
        public DAL()
        {
            _context = new WorkoutContext();
            listOfUsers = GetAllUsers();
            InsertTest(new TestClass() { Name = "Tobbe" });

        }

        public static void InsertTest(TestClass testclassen)
        {
            //var newStudent = testclassen;

            //set student name
            //newStudent.Name = "Bill";

            //create DBContext object
            using (var dbCtx = new WorkoutContext())
            {
                //Add Student object into Students DBset
                dbCtx.testClass.Add(testclassen);
                

                // call SaveChanges method to save student into database
                dbCtx.SaveChanges();
                int id = testclassen.ID;
                string hej = "muu";
            }
<<<<<<< HEAD
        }

        public static int CreateNewWorkout()
        {
            //User user =
            //    (from u in listOfUsers
            //        where u.ID == UserID
            //        select u).First();

            //using (var dbContext = new WorkoutContext)
            //{
            //    dbContext.Users.
            //}

            //user.Workouts.Add(workout);

            Workout workout = new Workout();
            DateTime now = DateTime.Now;
            workout.TraningDate = now;
            workout.UserID = UserID;

            //Activity activity = new Activity();
            //activity.WorkoutType = ActivityEnum.BenchPress.ToString();
            
            //workout.Activities.Add(activity);


             using (var dbContext = new WorkoutContext())
            {


                dbContext.Workouts.Add(workout);
                dbContext.SaveChanges();
                int theid = workout.ID;
                return workout.ID;
            }
        }

        public static int AddActivityToUserWorkout(Activity activity)
        {
            //var activity = new Activity();
            //activity.Difficulty = DifficultyEnum.Easy;
            //activity.HasSets = false;
            //activity.Sets = new List<RepetitionSet>();
            //activity.TimeSpan = 11;
            //activity.TraningDate = DateTime.Now;
            //activity.WorkoutType = "Benchpress";
            //activity.WorkoutID = 1;

            
            using (var dbContext = new WorkoutContext())
            {
                try
                {
                    dbContext.Activities.Add(activity);

                    dbContext.SaveChanges();
                }
                catch (Exception e)
                {

                    throw  new Exception(e.Message);
                }

                

               
            }
            return activity.ID;
=======
        }

        public static int CreateNewWorkout()
        {


           

            //User user =
            //    (from u in listOfUsers
            //        where u.ID == UserID
            //        select u).First();

            //using (var dbContext = new WorkoutContext)
            //{
            //    dbContext.Users.
            //}

            //user.Workouts.Add(workout);



            Workout workout = new Workout();
            DateTime now = DateTime.Now;
            workout.TraningDate = now;
            workout.UserID = UserID;






            using (var dbContext = new WorkoutContext())
            {


                dbContext.Workouts.Add(workout);
                dbContext.SaveChanges();

                return workout.ID;
            }
>>>>>>> b4d26dae58456c7b847ae3816006bdb9536ebaec
        }

        public static void InsertTest(List<Activity> activityList)
        {
            var updatedList = activityList;

            //set student name
            //newStudent.Name = "Bill";

            //create DBContext object
            using (var dbCtx = new WorkoutContext())
            {
                //Add Student object into Students DBset
                foreach (var activity in updatedList)
                {
                    dbCtx.Activities.Add(activity);
                }
                


                // call SaveChanges method to save student into database
                dbCtx.SaveChanges();
            }
        }

        public List<TestClass> GetTestClasses()
        {
            return (
                from t in _context.testClass
                select t).ToList();
        } 

        

        public List<Activity> GetAllActivities()
        {
            return (
                from u in _context.Users
                from w in u.Workouts
                from a in w.Activities
                where u.ID == UserID
                select a).ToList();
        } 

        public List<Workout> GetWorkouts()
        {
            return (from w in _context.Workouts
                select w).ToList();
        } 

        private List<User> GetAllUsers()
        {
            var query =
                (from u in _context.Users
                 select u).ToList();
            return query;
        }

        public static int UserID { get; set; }

        public static void Authenticate(string username, string password)
        {
            var dal = new DAL();
            var query =
                (from u in listOfUsers
                 where u.Password == password && u.UserName == username
                 select u.ID);

            foreach (var userid in query)
            {
                SetUserID(userid);
            }


        }

        public static  void SetUserID(int userID)
        {
            UserID = userID;
        }

        //public static void AddRepetitionSetToActivity(RepetitionSet repetitionSet, int activityID)
        //{

        //    repetitionSet.ActivityID = activityID;
            
        //    using (var dbCtx = new WorkoutContext())
        //    {

        //        dbCtx.RepetitionSet.Add(repetitionSet);
        //        dbCtx.SaveChanges();
        //    }
        //}
    }
}