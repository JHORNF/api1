class Question < ApplicationRecord
    has_many:answuer
    belons_to :category 
    has_many :challange
end
