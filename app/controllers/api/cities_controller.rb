class Api::CitiesController < ApplicationController
  def index
    @cities = City.all
    render "index.json.jbuilder"
  end

  def show
    @city = City.find_by(id:params[:id])
    render "show.json.jbuilder"
  end
end
