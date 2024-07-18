class Activity < ApplicationRecord
  has_many :activities_logs
  has_many :plans_activities

  SPORTS_STRAVA = [
    # { activity: Activity.find_by(activity: "Course à pied"), sport_type: "Run" },
    # { activity: Activity.find_by(activity: 'Vélo de route'), sport_type: "Bike" },
    # { activity: Activity.find_by(activity: 'Marche rapide'), sport_type: "Walk" },
    # { activity: Activity.find_by(activity: 'Natation'), sport_type: "Swim" }
    { activity: "Course à pied", sport_type: "Run" },
    { activity: "Vélo de route", sport_type: "Ride" },
    { activity: "Marche rapide", sport_type: "Walk" },
    { activity: "Natation", sport_type: "Swim" }
  ]

end
