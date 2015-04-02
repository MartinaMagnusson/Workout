﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace WorkoutLabb.Models
{
    public class WorkoutContextInitializer : DropCreateDatabaseAlways<WorkoutContext>
    {
        private List<User> _users;

        public WorkoutContextInitializer()
        {
            _users = new List<User>()
            {
                new User(userName: "Björk", password: "12345", joinGym: new DateTime(2015, 04, 01),
                    workouts: new List<Workout>()
                    {
                        new Workout()
                        {
                            Activities = new List<Activity>()
                            {
                                new Activity(30.52d,new List<RepetitionSet>(),Activity.DifficultyEnum.Easy, Activity.ActivityEnum.Cycling, new DateTime(2015,01,12))
                            },
                            TraningDate = new DateTime(2015, 04, 01)
                        },
                        new Workout()
                        {
                            Activities = new List<Activity>()
                            {
                                new Activity(30.52d,new List<RepetitionSet>(),Activity.DifficultyEnum.Easy, Activity.ActivityEnum.Cycling, new DateTime(2015,01,13))
                            },
                            TraningDate = new DateTime(2015, 04, 02)
                        },

                        new Workout()
                        {
                            Activities = new List<Activity>()
                            {
                                new Activity(30.52d,new List<RepetitionSet>(),Activity.DifficultyEnum.Easy, Activity.ActivityEnum.Cycling, new DateTime(2015,01,13))
                            },
                            TraningDate = new DateTime(2015, 04, 03)
                        }
                    }),
                new User(userName: "Roje", password: "54321", joinGym: new DateTime(2014, 01, 01),
                    workouts: new List<Workout>()
                    {
                        new Workout()
                        {
                            Activities = new List<Activity>()
                            {
                                new Activity(30.52d,new List<RepetitionSet>(),Activity.DifficultyEnum.Easy, Activity.ActivityEnum.Cycling, new DateTime(2015,01,20)),
                               new Activity(30.52d,new List<RepetitionSet>(),Activity.DifficultyEnum.Easy, Activity.ActivityEnum.Cycling, new DateTime(2015,01,21))
                            },
                            TraningDate = new DateTime(2015, 04, 01)
                        },
                        new Workout()
                        {
                            Activities = new List<Activity>()
                            {
                                new Activity(30.52d,new List<RepetitionSet>(),Activity.DifficultyEnum.Easy, Activity.ActivityEnum.Cycling, new DateTime(2015,01,22)),
                                new Activity(30.52d,new List<RepetitionSet>(),Activity.DifficultyEnum.Easy, Activity.ActivityEnum.Cycling, new DateTime(2015,01,23))
                            },
                            TraningDate = new DateTime(2015, 03, 01)
                        }

                    })
            };

        }

        public override void InitializeDatabase(WorkoutContext context)
        {
            _users.ForEach(u => context.Users.Add(u));
            base.InitializeDatabase(context);
        }
    }
}