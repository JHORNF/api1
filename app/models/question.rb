class Question < ApplicationRecord
    has_many:answer
    belongs_to :category 
    has_many :challenge
end
