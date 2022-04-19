class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(params)
    @restaurant.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to restaurants_path
  end

  def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
  end

  def show
    get_restaurant
  end

  private

  def get_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
