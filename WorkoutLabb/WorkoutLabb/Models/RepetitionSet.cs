using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WorkoutLabb.Models
{
    public class RepetitionSet
    {
        public int ID { get; set; }
        public int Weight { get; set; }
        public int Repetition { get; set; }
        public int ActivityID { get; set; }

        public RepetitionSet()
        {
            Weight = 0;
            Repetition = 0;
        }
        public RepetitionSet(int weight, int repetition)
        {
            Weight = weight;
            Repetition = repetition;
        }
    }
}