class Activity < ApplicationRecord
  has_many :activities_logs
  has_many :plans_activities

  SPORTS_STRAVA = [
    { activity: Activity.where(activity: "Course à pied"), sport_type: "Run" },
    { activity: Activity.where(activity: 'Vélo de route'), sport_type: "Bike" },
    { activity: Activity.where(activity: 'Marche rapide'), sport_type: "Walk" },
    { activity: Activity.where(activity: 'Natation'), sport_type: "Swim" }
  ]
end
