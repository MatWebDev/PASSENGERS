class Quote < ApplicationRecord
  belongs_to :freelancer
  has_many :elements, dependent: :destroy
  validates :total_price, presence: true
end
