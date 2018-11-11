class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      phone_number: params[:phone_number]
    )
    @user.save
    render "show.json.jbuilder"
  end

  def show
    @user = User.find_by(id:params[:id])
    render "show.json.jbuilder"
  end

  def update
    @user = User.find_by(id:params[:id])
    @user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      phone_number: params[:phone_number]
    )
    render "show.json.jbuilder"
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "user successfully destroyed."}
  end
end
