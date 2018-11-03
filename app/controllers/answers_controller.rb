class AnswersController < ApplicationController

    def index
        question = Question.all
        render json: question, status: :ok
    end
    def create
        answer = Answer.create!(answer_params)
        response = { message: Message.account_created }
        json_response(response, :created)
    end
    
    private

  def answer_params
    params.permit(
      :questionId,
      :description,
      :state,
      :state_drop
    )
  end

end
