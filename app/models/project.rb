class Project < ApplicationRecord
  belongs_to :user
  has_many :users, through: :collaborations
  has_many :collaborations, dependent: :destroy
  validates :title, :description, presence: true
end
