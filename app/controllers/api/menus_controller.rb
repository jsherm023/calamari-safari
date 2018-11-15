class Api::MenusController < ApplicationController
  def index
    @menus = Menu.all
    render "index.json.jbuilder"
  end

  def show
    @menu = Menu.find_by(id:params[:id])
    render "show.json.jbuilder"
  end
end
