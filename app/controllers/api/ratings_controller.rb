class Api::RatingsController < ApplicationController
  def index
    @ratings = Rating.all
    render "index.json.jbuilder"
  end

  def create
    @rating = Rating.new(
      star: params[:star],
      review: params[:review],
      must_visit: params[:must_visit],
      source: params[:source],
      restaurant_id: params[:restaurant_id],
      user_id: current_user.id
    )
    @rating.save
    render "show.json.jbuilder"
  end

  def show
    @rating = Rating.find_by(id:params[:id])
    render "show.json.jbuilder"
  end

  def update
    @rating = Rating.find_by(id:params[:id])
    @rating.update(
      star: params[:star],
      review: params[:review],
      must_visit: params[:must_visit],
      source: params[:source],
      restaurant_id: params[:restaurant_id],
      user_id: current_user.id
    )
    render "show.json.jbuilder"
  end

  def destroy
    @rating = Rating.find_by(id: params[:id])
    @rating.destroy
    render json: {message: "rating successfully destroyed."}
  end
end
