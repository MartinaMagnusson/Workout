using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WorkoutLabb.Models;

namespace WorkoutLabb
{
    public class Activity
    {

        public enum DifficultyEnum
        {
            Easy = 120, Medium = 150, Hard = 200
        }

        //public enum ActivityEnum
        //{
        //    Running, BenchPress, Cycling, IndoorRower, IndoorWalking
        //}
        public Activity()
        {
            
        }



        public int ID { get; set; }

        public Activity(double timeSpan, List<RepetitionSet> sets, DifficultyEnum difficulty, ActivityEnum workoutTypeList, DateTime traningDate)
        {
            TimeSpan = timeSpan;
            Sets = sets;
            Difficulty = difficulty;
            WorkoutType = workoutTypeList.ToString();
            TraningDate = traningDate;
        }

        public double TimeSpan { get; set; }
        
        public List<RepetitionSet> Sets { get; set; }

        public DifficultyEnum Difficulty { get; set; }
        public string WorkoutType { get; set; }
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