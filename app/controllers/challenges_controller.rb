class ChallengesController < ApplicationController
     def index
        challenge = Challenge.all
        render json: challenge, status: :ok
    end
    
    def create
        challenge = Challenge.create!(challenge_params)
        render json: challenge, status: :ok
    end
    
    private

  def challenge_params
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
