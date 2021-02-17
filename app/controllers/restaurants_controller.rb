class RestaurantsController < ApplicationController

  before_action :find_restaurant_id, only: :show

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    # redirect to newly created restaurant page
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @reviews = @restaurant.reviews
  end

  private

  def find_restaurant_id
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
