class Quote < ApplicationRecord
  belongs_to :freelancer
  has_many :elements
  validates :total_price, presence: true
end
