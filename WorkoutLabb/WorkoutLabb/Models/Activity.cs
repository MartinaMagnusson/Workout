using System;
using System.Collections.Generic;
<<<<<<< HEAD
using System.Linq;
using System.Web;
using WorkoutLabb.Logic;
using WorkoutLabb.Models;
=======
>>>>>>> b4d26dae58456c7b847ae3816006bdb9536ebaec

namespace WorkoutLabb.Models
{
    public class Activity
    {

        //public enum DifficultyEnum
        //{
        //    Easy = 120, Medium = 150, Hard = 200
        //}

        //public enum ActivityEnum
        //{
        //    Running, BenchPress, Cycling, IndoorRower, IndoorWalking
        //}
        public Activity()
        {
            
        }



        public int ID { get; set; }
        public int WorkoutID { get; set; }

        public Activity(double timeSpan, List<RepetitionSet> sets, DifficultyEnum difficulty, ActivityEnum workoutTypeList, DateTime traningDate)
        {
            TimeSpan = timeSpan;
            Sets = sets;
            Difficulty = difficulty;
            WorkoutType = workoutTypeList.ToString();
            TraningDate = traningDate;
            HasSets = false;
        }

        public double TimeSpan { get; set; }
        
        public virtual List<RepetitionSet> Sets { get; set; }

        public DifficultyEnum Difficulty { get; set; }
        public string WorkoutType { get; set; }
        public bool HasSets { get; set; }
        public DateTime TraningDate { get; set; }

        
        


        
        /* 
         * Vi behöver ett datum för aktiviteten samt en timespan för hur länge den pågått.
         * Detta för att kunna söka efter aktivitet på ett specifikt datum samt
         * visa "highscore" med rekord-tider.
         * 
         * Vi behöver en klass som håller reda på SET i aktiviteten.
         * 
         * */

    }
}