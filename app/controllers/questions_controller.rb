class QuestionsController < ApplicationController
     def index
        question = Question.all
        render json: question, status: :ok
    end
    
    def create
        question = Question.create!(question_params)
        render json: question, status: :ok
    end
    
    private

  def question_params
    params.permit(
      :categoryId,  
      :name,  
      :description,
      :points,
      :image,
      :state
    )
  end


end
