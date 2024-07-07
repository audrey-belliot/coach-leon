# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_07_212545) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "category"
    t.string "activity"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "duration"
    t.integer "calories_loss"
  end

  create_table "activities_logs", force: :cascade do |t|
    t.date "date"
    t.bigint "activity_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "comment"
    t.float "duration"
    t.integer "strava_id"
    t.index ["activity_id"], name: "index_activities_logs_on_activity_id"
    t.index ["user_id"], name: "index_activities_logs_on_user_id"
  end

  create_table "health_logs", force: :cascade do |t|
    t.date "date"
    t.float "weight"
    t.float "measurement"
    t.integer "rating_nutrition"
    t.integer "rating_activity"
    t.integer "rating_mood"
    t.float "water"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_health_logs_on_user_id"
  end

  create_table "meals_logs", force: :cascade do |t|
    t.date "date"
    t.text "comment"
    t.bigint "recipe_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_meals_logs_on_recipe_id"
    t.index ["user_id"], name: "index_meals_logs_on_user_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "plans_activities", force: :cascade do |t|
    t.bigint "plan_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_plans_activities_on_activity_id"
    t.index ["plan_id"], name: "index_plans_activities_on_plan_id"
  end

  create_table "plans_recipes", force: :cascade do |t|
    t.bigint "plan_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_plans_recipes_on_plan_id"
    t.index ["recipe_id"], name: "index_plans_recipes_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "category"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ingredient"
    t.string "picture"
    t.string "name"
    t.integer "calories"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "goal"
    t.string "food_preferences"
    t.string "sport_preferences"
    t.date "birthdate"
    t.string "type_user"
    t.string "access_token"
    t.string "refresh_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities_logs", "activities"
  add_foreign_key "activities_logs", "users"
  add_foreign_key "health_logs", "users"
  add_foreign_key "meals_logs", "recipes"
  add_foreign_key "meals_logs", "users"
  add_foreign_key "plans", "users"
  add_foreign_key "plans_activities", "activities"
  add_foreign_key "plans_activities", "plans"
  add_foreign_key "plans_recipes", "plans"
  add_foreign_key "plans_recipes", "recipes"
end
