class AnswersController < ApplicationController

    def index
        answer = Answer.all
        render json: answer, status: :ok
    end
    def create
        answer = Answer.create!(answer_params)
        response = { message: Message.account_created }
        json_response(response, :created)
    end
    
    def show
        answer = Answer.find(params[:id])
        render json: answer, status: :ok
    end
    
    def destroy
        answer = Answer.find(params[:id])
        answer.destroy
    end
    
    def update
       Answer.update(answer_params)
    end  
    
    
    private

  def answer_params
    params.permit(
      :question_id,
      :description,
      :state,
      :state_drop
    )
  end

end
