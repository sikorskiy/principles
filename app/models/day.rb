class Day < ApplicationRecord
  belongs_to :week
  has_many :user_days

  has_many :users, through: :user_days
end
