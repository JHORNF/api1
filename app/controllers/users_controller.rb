class UsersController < ApplicationController
    
    def create
            user = User.create(user_params)
            render json: user, status: :ok
    end
    
    def index
        user = User.all
        render json: user, status: :ok
        
    end
    
    def destroy
        user= User.find(params[:id])
        user.destroy
    end
    
    def show
        user = User.find(params[:id])
        render json: user, status: :ok
    end
    
    def update
       User.update(user_params)
    end
    
    private
    
    def user_params
            params.permit(
            :name,
            :email,
            :password)
    end
    
end
