class HealthLog < ApplicationRecord
  belongs_to :user
  validates :date, presence: true
  validates :weight, presence: true
end
