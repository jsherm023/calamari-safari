class Api::CitiesController < ApplicationController
  def index
    @cities = City.all
    render "index.json.jbuilder"
  end

  def create
    @city = City.new(
      name: params[:name],
      zip_code: params[:zip_code],
      state_id: params[:state_id]
    )
    @city.save
    render "show.json.jbuilder"
  end

  def show
    @city = City.find_by(id:params[:id])
    render "show.json.jbuilder"
  end

  def update
    @city = City.find_by(id:params[:id])
    @city.update(
      name: params[:name],
      zip_code: params[:zip_code],
      state_id: params[:state_id]
    )
    render "show.json.jbuilder"
  end

  def destroy
    @city = City.find_by(id: params[:id])
    @city.destroy
    render json: {message: "city successfully destroyed."}
  end
end
