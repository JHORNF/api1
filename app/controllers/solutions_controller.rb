class SolutionsController < ApplicationController
     def create
            solution = Solution.create(solution_params)
            render json: solution, status: :ok
    end
    
    def index
        solution = Solution.all
        render json: solution, status: :ok
        
    end
    
    def show
        solution  = Solution.find(params[:id])
        render json: solution , status: :ok
    end
    
    def destroy
        solution = Solution.find(params[:id])
        solution.destroy
    end

    def update
       Solution.update(solution_params)
    end
    
    private
    
    def solution_params
            params.permit(:user_id, :challenge_id, :state)
    end

end
