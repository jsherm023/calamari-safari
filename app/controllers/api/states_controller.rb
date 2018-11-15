class Api::StatesController < ApplicationController
    def index
    @states = State.all
    render "index.json.jbuilder"
  end

  def show
    @state = State.find_by(id:params[:id])
    render "show.json.jbuilder"
  end
end
