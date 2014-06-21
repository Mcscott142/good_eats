class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order('created_at DESC')
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @reviews = @restaurant.reviews.order('created_at DESC')
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path
    end
  end

  def recently_added
    @restaurants = Restaurant.order('created_at DESC LIMIT 10')
  end

private
  def restaurant_params
  params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description, :category)
  end

end
