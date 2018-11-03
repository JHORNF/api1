class CategoriesController < ApplicationController
    def index
        category = Category.all
        render json: category, status: :ok
    end
    
    def create
        category = Category.create!(category_params)
        render json: category, status: :ok
    end
    
    private

  def category_params
    params.permit(
      :description,
      :state
    )
  end
  
  
    
end
