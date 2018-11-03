class ScoresController < ApplicationController

    def create
            score = Score.create(score_params)
            render json: score, status: :ok
    end
    
    def index
        score = Score.all
        render json: score, status: :ok
        
    end
    
    private
    
    def score_params
            params.permit(:userId, :value, :scoreDate)
    end

end
