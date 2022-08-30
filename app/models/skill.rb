class Skill < ApplicationRecord
  belongs_to :freelancer
  validates :title, :rating, presence: true
end
