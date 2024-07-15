class ActivitiesLog < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  validates :date, presence: true
end
