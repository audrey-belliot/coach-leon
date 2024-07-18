class Activity < ApplicationRecord
  has_many :activities_logs
  has_many :plans_activities

  SPORTS_STRAVA = [
<<<<<<< HEAD
    { activity: Activity.where(activity: "Course à pied"), sport_type: "Run" },
    { activity: Activity.where(activity: 'Vélo de route'), sport_type: "Bike" },
    { activity: Activity.where(activity: 'Marche rapide'), sport_type: "Walk" },
    { activity: Activity.where(activity: 'Natation'), sport_type: "Swim" }
  ]
=======
    # { activity: Activity.find_by(activity: "Course à pied"), sport_type: "Run" },
    # { activity: Activity.find_by(activity: 'Vélo de route'), sport_type: "Bike" },
    # { activity: Activity.find_by(activity: 'Marche rapide'), sport_type: "Walk" },
    # { activity: Activity.find_by(activity: 'Natation'), sport_type: "Swim" }
    { activity: "Course à pied", sport_type: "Run" },
    { activity: "Vélo de route", sport_type: "Ride" },
    { activity: "Marche rapide", sport_type: "Walk" },
    { activity: "Natation", sport_type: "Swim" }
  ]

>>>>>>> 9a6acdf2069f6dd4866e1540ca177504409c1c73
end
