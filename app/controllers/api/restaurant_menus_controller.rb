class Api::RestaurantMenusController < ApplicationController
  def index
    @restaurant_menus = RestaurantMenu.all
    render "index.json.jbuilder"
  end

  def show
    @restaurant_menu = RestaurantMenu.find_by(id:params[:id])
    render "show.json.jbuilder"
  end
end
