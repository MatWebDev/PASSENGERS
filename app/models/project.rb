class Project < ApplicationRecord
  belongs_to :user
  has_many :users, through: :collaborations
  validates :title, :description, presence: true
end
