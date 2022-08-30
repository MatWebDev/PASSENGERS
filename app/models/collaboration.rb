class Collaboration < ApplicationRecord
  belongs_to :project
  belongs_to :freelancer
  STATUS = ['accepted', 'pending', 'rejected'].freeze
end
