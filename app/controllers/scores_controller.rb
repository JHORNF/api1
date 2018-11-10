class ScoresController < ApplicationController

    def create
            score = Score.create(score_params)
            render json: score, status: :ok
    end
    
    def index
        score = Score.all
        render json: score, status: :ok
        
    end
 
    def show
        score  = Score.find(params[:id])
        render json: score , status: :ok
    end
   
   def destroy
        score = Score.find(params[:id])
        score.destroy
    end
    
    def update
       Score.update(score_params)
    end
   
    private
    
    def score_params
            params.permit(:user_id, :points, :date)
    end

end
