class Api::ZipCodesController < ApplicationController
  def index
    @zip_codes = ZipCode.all
    render "index.json.jbuilder"
  end

  def show
    @zip_code = ZipCode.find_by(id:params[:id])
    render "show.json.jbuilder"
  end
end
