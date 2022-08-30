class Quote < ApplicationRecord
  belongs_to :user
  has_many :elements
  validates :total_price, presence: true
end
