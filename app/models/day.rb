class Day < ApplicationRecord
  has_many :user_days, dependent: :destroy

  has_many :users, through: :user_days
end
