class Freelancer < ApplicationRecord
  belongs_to :user
  has_many :skills
  validates :user_id, uniqueness: true
  validates :first_name, :last_name, :phone_number, :address, :siret, :description, :email, presence: true
  validates :number_of_projects, :batch_date, presence: true
  validates :siret, :email, uniqueness: true
end
