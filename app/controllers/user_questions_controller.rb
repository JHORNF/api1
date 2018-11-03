class UserQuestionsController < ApplicationController

    def create
            userQuestion = UserQuestion.create(userQuestion_params)
            render json: userQuestion, status: :ok
    end
    
    def index
        userQuestion = UserQuestion.all
        render json: userQuestion, status: :ok
        
    end
    
    private
    
    def userQuestion_params
            params.permit(:userId, :questionId)
    end

end
