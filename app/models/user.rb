class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :phone_number, :address, presence: true
  has_one :freelancer
  has_many :projects
  has_many :collaborations, through: :projects
  has_many :messages
  ROLE = ['freelancer', 'customer'].freeze
end
