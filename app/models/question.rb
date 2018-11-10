class Question < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :users
  has_many :challenges
  has_many :answers 
end
