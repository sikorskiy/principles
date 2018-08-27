class UserWeek < ApplicationRecord
  belongs_to :user
  belongs_to :week
  has_many :weekly_tasks
end
