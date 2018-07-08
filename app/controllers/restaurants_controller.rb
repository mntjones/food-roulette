class RestaurantsController < ApplicationController

	def new
		@restaurant = Restaurant.new
		@user = current_user
	end

	def create
		@restaurant = Restaurant.create(restaurant_params)
		redirect_to restaurant_path(@restaurant)
	end

	def show
		@restaurant = Restaurant.find_by(id: params[:id])

	end

	def edit
		@restaurant = Restaurant.find_by(id: params[:id])
	end

	def update
		@restaurant = Restaurant.find_by(id: params[:id])
		@restaurant.update(restaurant_params)
		redirect_to restaurant_path
	end

	def destroy

	end

	private 

	def restaurant_params
		params.require(:restaurant).permit(:name, :food_type, :meal_type)
	end

end
