class Rule < ApplicationRecord
  belongs_to :user_day
  has_many :taggizations
  has_many :tags, through: :taggizations
end
