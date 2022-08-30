class Skill < ApplicationRecord
  belongs_to :user
  validates :title, :rating, presence: true
end
