class Tag < ApplicationRecord
  has_many :taggizations
  has_many :rules, through: :taggizations
end
