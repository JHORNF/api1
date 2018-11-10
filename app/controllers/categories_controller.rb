class CategoriesController < ApplicationController
    def index
        category = Category.all
        render json: category, status: :ok
    end
    
    def create
        category = Category.create!(category_params)
        render json: category, status: :ok
    end
    def show
        category = Category.find(params[:id])
        render json: category, status: :ok
    end
    
    def destroy
        category = Category.find(params[:id])
        category.destroy
    end
    
    def update
       Category.update(category_params)
    end 
    
    private

  def category_params
    params.permit(
      :description,
      :state
    )
  end
  
  
    
end
