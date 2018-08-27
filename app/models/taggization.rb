class Taggization < ApplicationRecord
  belongs_to :tag
  belongs_to :rule
end
