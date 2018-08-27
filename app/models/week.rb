class Week < ApplicationRecord
  has_many :days
  has_many :user_weeks
  has_many :users, through: :user_weeks
end
