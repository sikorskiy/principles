class UserDay < ApplicationRecord
  belongs_to :user
  belongs_to :day
  has_many :daily_tasks
  has_many :success_notes
  has_many :fail_notes
  has_many :challenge_notes
  has_many :rules
end
