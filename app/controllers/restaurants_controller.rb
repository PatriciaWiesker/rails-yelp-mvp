class RestaurantsController < ApplicationController

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :address, :description, :stars))
    @restaurant.save
    redirect_to restaurant_path(restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
