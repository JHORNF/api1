class ChallengesController < ApplicationController
     def index
        challenge = Challenge.all
        render json: challenge, status: :ok
    end
    
    def create
        challenge = Challenge.create!(challenge_params)
        render json: challenge, status: :ok
    end
    
    def show
        challenge = Challenge.find(params[:id])
        render json: challenge, status: :ok
    end
    def update
       Challenge.update(challenge_params)
    end 
    
    private

  def challenge_params
    params.permit(
      :question_id,  
      :name,  
      :time,
      :point,
      :state,
      :state_drop
    )
  end

end
