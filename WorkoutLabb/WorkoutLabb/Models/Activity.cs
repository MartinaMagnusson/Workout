using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WorkoutLabb
{
    public class Activity
    {
        public Activity()
        {
            
        }
        public Activity(string activityName, int calories, double timeSpan)
        {
            ActivityName = activityName;
            Calories = calories;
            TimeSpan = timeSpan;
        }

        public int ID { get; set; }
        public string ActivityName { get; set; }
        public double TimeSpan { get; set; }
        public int Calories { get; set; }
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