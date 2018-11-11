class Api::MenusController < ApplicationController
  def index
    @menus = Menu.all
    render "index.json.jbuilder"
  end

  def create
    @menu = Menu.new(
      name: params[:name],
      url: params[:url]
    )
    @menu.save
    render "show.json.jbuilder"
  end

  def show
    @menu = Menu.find_by(id:params[:id])
    render "show.json.jbuilder"
  end

  def update
    @menu = Menu.find_by(id:params[:id])
    @menu.update(
      name: params[:name],
      url: params[:url]
    )
    render "show.json.jbuilder"
  end

  def destroy
    @menu = Menu.find_by(id: params[:id])
    @menu.destroy
    render json: {message: "menu successfully destroyed."}
  end
end
