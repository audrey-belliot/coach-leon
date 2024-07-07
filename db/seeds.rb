puts "Cleaning the seeds..."

ActivitiesLog.destroy_all
HealthLog.destroy_all
MealsLog.destroy_all
PlansActivity.destroy_all
PlansRecipe.destroy_all
Recipe.destroy_all
Activity.destroy_all
Plan.destroy_all
User.destroy_all

puts "Seeds cleaned !"

puts "Creating new users..."

users = [
  User.create!(email: "kevin@gmail.com", password: "password", firstname: "Kévin", goal: "Perdre du poids", food_preferences: "Veggie", sport_preferences: "Cardio", birthdate: Date.new(2024,06,07), type_user: ""),
  User.create!(email: "audrey@gmail.com", password: "password", firstname: "Audrey", goal: "Perdre du poids", food_preferences: "Veggie", sport_preferences: "Cardio", birthdate: Date.new(2024,06,07), type_user: ""),
  User.create!(email: "marie@gmail.com", password: "password", firstname: "Marie", goal: "Préparer un troisième marathon", food_preferences: "Veggie", sport_preferences: "Cardio", birthdate: Date.new(2024,06,07), type_user: ""),
  User.create!(email: "valentin@gmail.com", password: "password", firstname: "Valentin", goal: "Perdre du poids", food_preferences: "Veggie", sport_preferences: "Cardio", birthdate: Date.new(2024,06,07), type_user: "")
]

puts "Creating new recipes..."

recipes = [
  Recipe.create!(category: 'Breakfast', details: 'Oatmeal with fresh fruits and nuts.', calories: '300 kcal'),
  Recipe.create!(category: 'Lunch', details: 'Grilled chicken salad with mixed greens.', calories: '450 kcal'),
  Recipe.create!(category: 'Dinner', details: 'Baked salmon with quinoa and vegetables.', calories: '500 kcal'),
  Recipe.create!(category: 'Snack', details: 'Greek yogurt with honey and almonds.', calories: '150 kcal'),
]

puts "Recipes created !"

puts "Creating new activities..."

activities = [
  Activity.create!(category: 'Cardio', activity: 'Running', details: 'Run at a moderate pace for 30 minutes.'),
  Activity.create!(category: 'Strength', activity: 'Weight Lifting', details: 'Perform 3 sets of 10 reps of bench press.'),
  Activity.create!(category: 'Flexibility', activity: 'Yoga', details: 'Complete a 45-minute Vinyasa yoga session.'),
  Activity.create!(category: 'Endurance', activity: 'Cycling', details: 'Cycle at a steady pace for 60 minutes.'),
]

puts "Activities created !"


puts "Creating new plans..."

plans = [
  Plan.create!(name: 'Summer Shred', start_date: '2024-06-01', end_date: '2024-08-31', description: 'A plan to get in shape for the summer.', user: User.first),
  Plan.create!(name: 'Muscle Gain', start_date: '2024-01-01', end_date: '2024-03-31', description: 'A plan focused on gaining muscle mass.', user: User.second),
  Plan.create!(name: 'Marathon Prep', start_date: '2024-04-01', end_date: '2024-06-30', description: 'A plan to prepare for a marathon.', user: User.third),
  Plan.create!(name: 'Healthy Lifestyle', start_date: '2024-07-01', end_date: '2024-09-30', description: 'A plan to maintain a healthy lifestyle.', user: User.last)
]

puts "Plans created !"

puts "Creating new plan activity..."

plan_activities = [
  PlansActivity.create!(plan: Plan.first, activity: Activity.first),
  PlansActivity.create!(plan: Plan.second, activity: Activity.second),
  PlansActivity.create!(plan: Plan.third, activity: Activity.third),
  PlansActivity.create!(plan: Plan.last, activity: Activity.last)
]

puts "Plan activity created !"

puts "Creating new plan recipe..."

plan_recipes = [
  PlansRecipe.create!(plan: Plan.first, recipe: Recipe.first),
  PlansRecipe.create!(plan: Plan.second, recipe: Recipe.second),
  PlansRecipe.create!(plan: Plan.third, recipe: Recipe.third),
  PlansRecipe.create!(plan: Plan.last, recipe: Recipe.last)
]

puts "Plan recipe created !"

puts "Creating new health logs..."

health_logs = [
  HealthLog.create(date: DateTime.new(2024,1,1), weight: 100.0, measurement: 162, rating_nutrition: 2, rating_activity: 3, rating_mood: 3, water: 0.5 , user: User.first),
  HealthLog.create(date: DateTime.new(2024,2,1), weight: 98.0, measurement: 162, rating_nutrition: 3, rating_activity: 5, rating_mood: 4, water: 0.5 , user: User.second),
  HealthLog.create(date: DateTime.new(2024,3,1), weight: 97.0, measurement: 162, rating_nutrition: 4, rating_activity: 6, rating_mood: 5, water: 0.5 , user: User.third),
  HealthLog.create(date: DateTime.new(2024,4,1), weight: 92.0, measurement: 162, rating_nutrition: 5, rating_activity: 6, rating_mood: 6, water: 0.5 , user: User.last)
]

puts "Health logs created !"

activities_logs = [
  ActivitiesLog.create!(date: '2024-01-01', activity: activities[0], user: User.first, comment: 'Felt great during the run.', duration: 30.0, strava_id: 1234),
  ActivitiesLog.create!(date: '2024-02-01', activity: activities[1], user: User.second, comment: 'Lifted heavier weights today.', duration: 45.0, strava_id: 5678),
  ActivitiesLog.create!(date: '2024-03-01', activity: activities[2], user: User.third, comment: 'Very relaxing yoga session.', duration: 60.0, strava_id: 9101),
  ActivitiesLog.create!(date: '2024-04-01', activity: activities[3], user: User.last, comment: 'Cycled with friends, great weather.', duration: 90.0, strava_id: 1121),
]

puts "Activities logs created !"

puts "Creating meals logs..."

meals_logs = [
  MealsLog.create!(date: '2024-01-01', comment: 'Delicious and filling breakfast.', recipe: recipes[0], user: User.first),
  MealsLog.create!(date: '2024-02-01', comment: 'Healthy and tasty lunch.', recipe: recipes[1], user: User.second),
  MealsLog.create!(date: '2024-03-01', comment: 'Perfect dinner after a workout.', recipe: recipes[2], user: User.third),
  MealsLog.create!(date: '2024-04-01', comment: 'Great snack for a quick energy boost.', recipe: recipes[3], user: User.last)
]

puts "Meals logs created !"

puts "Seed session finished !"
