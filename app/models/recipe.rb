class Recipe < ApplicationRecord
  has_many :meals_logs
  has_many :plans_recipes
end
