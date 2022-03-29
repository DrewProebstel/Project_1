class DropzonesController < ApplicationController
  def index
    @dropzones = Dropzone.all
  end
  def show
    @dropzone = Dropzone.find(params[:id])
  end
  def new
  end

  def create
    dropzone = Dropzone.create(windtunnel: params[:windtunnel],employees: params[:employees],city: params[:city],name: params[:name])
    redirect_to "/dropzones/#{dropzone.id}"
  end
end
