class ReviewsController < ApplicationController

  before_action :find_restaurant_id, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    @review.restaurant = @restaurant
    # redirect to restaurant page with new review
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end

  private

  def find_restaurant_id
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  
  def review_params
    params.require(:review).permit(:rating, :content)
  end
  
end
