class User < ApplicationRecord
    
    has_secure_password
    
    has_many :scores
    has_many :user_questions
    has_many :user_challenges
    
end
