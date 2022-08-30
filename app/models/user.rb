class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :phone_number, :address, presence: true
  validates :siret, :description, :number_of_projects, :batch_date, presence: true, if: :freelancer?
  has_many :projects, dependent: :destroy
  has_many :collaborations, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :quotes, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_one_attached :photo
  ROLE = ['freelancer', 'customer'].freeze

  def freelancer?
    self.role == "freelancer"
  end
end
