# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

HealthLog.destroy_all


HealthLog.create(date: DateTime.new(2024,1,1), weight: 100.0, measurement: 162, rating_nutrition: 2, rating_activity: 3, rating_mood: 3, water: 0.5 , user_id: 1)
HealthLog.create(date: DateTime.new(2024,2,1), weight: 98.0, measurement: 162, rating_nutrition: 3, rating_activity: 5, rating_mood: 4, water: 0.5 , user_id: 1)
HealthLog.create(date: DateTime.new(2024,3,1), weight: 97.0, measurement: 162, rating_nutrition: 4, rating_activity: 6, rating_mood: 5, water: 0.5 , user_id: 1)
HealthLog.create(date: DateTime.new(2024,4,1), weight: 92.0, measurement: 162, rating_nutrition: 5, rating_activity: 6, rating_mood: 6, water: 0.5 , user_id: 1)
