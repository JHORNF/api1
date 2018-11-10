class QuestionsController < ApplicationController
     def index
        question = Question.all
        render json: question, status: :ok
    end
    
    def create
        question = Question.create!(question_params)
        render json: question, status: :ok
    end
    
    def show
        question  = Question .find(params[:id])
        render json: question , status: :ok
    end
    
    def destroy
        question = Question.find(params[:id])
        question.destroy
    end
    
    def update
       Question.update(question_params)
    end
    
    private

  def question_params
    params.permit(
      :category_id,  
      :name,  
      :description,
      :point,
      :image,
      :state
    )
  end


end
