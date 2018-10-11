class SuccessNote < ApplicationRecord
  belongs_to :user
  validates :body, :why_answer, :user, :day, presence: true
end
