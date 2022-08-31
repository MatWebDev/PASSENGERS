class Collaboration < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :title, :total_price, presence: true
  STATUS = ['accepted', 'pending', 'declined'].freeze
end
