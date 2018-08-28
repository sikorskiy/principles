class Week < ApplicationRecord
  has_many :days
  has_many :user_weeks, dependent: :destroy
  has_many :users, through: :user_weeks

  validates :start, :finish, presence: true
end
