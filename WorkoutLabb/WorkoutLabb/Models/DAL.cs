using System;
using System.Collections.Generic;
using System.Linq;
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
            
        }

        public List<Activity> GetTopScoreActivity()
        {
            var activityList = GetAllActivitesFromUser();
            return (
                from a in activityList
                orderby a.TimeSpan ascending
                select a).ToList();


        }

        private List<Activity> GetAllActivitesFromUser()
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
        public List<User> GetUsers()
        {
           
            return
                (from u in _context.Users
                 where u.ID == UserID
                 select u).ToList();
        }

        private List<User> GetAllUsers()
        {
            var query =
                (from u in _context.Users
                 select u).ToList();
            return query;
        }

        public List<Activity> GetActivities()
        {
            return (from u in _context.Users
                   from w in u.Workouts
                   from a in w.Activities
                   where u.ID == UserID
                   select a).ToList();
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