class Freelancer < ApplicationRecord
  belongs_to :user
  has_many :skills, dependent: :destroy
  has_many :quotes
  has_many :collaborations
  has_one_attached :photo
  validates :user_id, uniqueness: true
  validates :first_name, :last_name, :phone_number, :address, :siret, :description, :email, presence: true
  validates :number_of_projects, :batch_date, presence: true
  validates :siret, :email, uniqueness: true
end
