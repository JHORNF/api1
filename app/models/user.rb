class User < ApplicationRecord
    
    has_secure_password
    
    has_many :scores
#    has_many :user_questionsrails
#    has_many :user_challenges
    has_and_belongs_to_many :questions
    has_many :solutions
    has_many :challenges, through: :solutions
end
