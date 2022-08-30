class Element < ApplicationRecord
  belongs_to :quote
  validates :content, :price, presence: true
end
