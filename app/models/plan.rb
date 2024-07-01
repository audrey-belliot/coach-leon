class Plan < ApplicationRecord
  belongs_to :user
  has_many :plans_activities
  has_many :plans_recipes
end
