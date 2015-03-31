using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WorkoutLabb.Models
{
    public class DAL
    {
        private WorkoutContext _context;
        public DAL()
        {
            _context = new WorkoutContext();
        }

        public List<User> Users()
        {
            return
                (from u in _context.Users
                 select u).ToList();
        }
    }
}