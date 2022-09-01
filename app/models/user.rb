class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :phone_number, :address, presence: true
  validates :siret, :description, :number_of_projects, :year_exp, :skills, presence: true, if: :freelancer?
  has_many :projects, dependent: :destroy
  has_many :collaborations, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_one_attached :photo
  before_save :experience, if: :freelancer?
  ROLE = ['freelancer', 'customer'].freeze


  def freelancer?
    self.role == "freelancer"
  end

  def experience
    # p self.year_exp
    # p self.number_of_projects
    # p self.skills.size
    self.score_exp = (self.year_exp * 7) + (self.number_of_projects * 2)
  end
end
