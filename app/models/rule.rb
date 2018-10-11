class Rule < ApplicationRecord
  has_many :taggizations
  has_many :tags, through: :taggizations
  belongs_to :user

  validates :user, :day, :rule_text, :name, :body, presence: true
end
