using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ExceptionServices;
using System.Security.Cryptography;
using System.Web;

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
    }
}