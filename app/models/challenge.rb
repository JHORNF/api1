class Challenge < ApplicationRecord
  belongs_to :question 
  has_many :solutions
  has_many :users, through: :solutions
end
