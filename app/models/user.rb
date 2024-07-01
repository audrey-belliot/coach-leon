class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plans
  has_many :health_logs
  has_many :activities_logs
  has_many :meals_logs
  has_many :plans_activities, through: :plans
  has_many :plans_recipes, through: :plans
end
