class Activity < ApplicationRecord
  has_many :activities_logs
  has_many :plans_activities
end
