class Api::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    render "index.json.jbuilder"
  end

  def create
    @restaurant = Restaurant.new(
      name: params[:name],
      description: params[:description],
      cuisine: params[:cuisine],
      style: params[:style]
    )
    @restaurant.save
    render "show.json.jbuilder"
  end

  def show
    @restaurant = Restaurant.find_by(id:params[:id])
    render "show.json.jbuilder"
  end

  def update
    @restaurant = Restaurant.find_by(id:params[:id])
    @restaurant.update(
      name: params[:name],
      description: params[:description],
      cuisine: params[:cuisine],
      style: params[:style]
    )
    render "show.json.jbuilder"
  end

  def destroy
    @restaurant = Restaurant.find_by(id: params[:id])
    @restaurant.destroy
    render json: {message: "restaurant successfully destroyed."}
  end
end
