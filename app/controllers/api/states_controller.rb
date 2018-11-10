class Api::StatesController < ApplicationController
    def index
    @states = State.all
    render "index.json.jbuilder"
  end

  def create
    @state = State.new(
      name: params[:name]
    )
    @state.save
    render "show.json.jbuilder"
  end

  def show
    @state = State.find_by(id:params[:id])
    render "show.json.jbuilder"
  end

  def update
    @state = State.find_by(id:params[:id])
    @state.update(
      name: params[:name]
    )
    render "show.json.jbuilder"
  end

  def destroy
    @state = State.find_by(id: params[:id])
    @state.destroy
    render json: {message: "state successfully destroyed."}
  end
end
