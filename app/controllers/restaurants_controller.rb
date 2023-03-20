class RestaurantsController < ApplicationController
    def index
      render json: Restaurant.all
    end
  
    def show
      restaurant = Restaurant.find(params[:id])
      render json: restaurant, include: :pizzafoods
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  
    def destroy
      restaurant = Restaurant.find(params[:id])
      restaurant.destroy
      head :no_content
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  end