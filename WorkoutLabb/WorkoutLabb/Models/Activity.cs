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
            Easy, Medium, Hard
        }
        public Activity()
        {
            
        }

        public Activity(string activityName, double timeSpan, List<RepetitionSet> sets, DifficultyEnum difficulty)
        {
            ActivityName = activityName;
            TimeSpan = timeSpan;
           
            Sets = sets;
            Difficulty = difficulty;
        }

        public int ID { get; set; }
        public string ActivityName { get; set; }
        public double TimeSpan { get; set; }
        
        public List<RepetitionSet> Sets { get; set; }

        public DifficultyEnum Difficulty { get; set; }
        


        
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