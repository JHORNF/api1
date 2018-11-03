class UserChallengesController < ApplicationController

    def create
            userChallenge = UserChallenge.create(userChallenge_params)
            render json: userChallenge, status: :ok
    end
    
    def index
        userChallenge = UserChallenge.all
        render json: userChallenge, status: :ok
        
    end
    
    private
    
    def userChallenge_params
            params.permit(:userId, :challengeId, :state)
    end

end
