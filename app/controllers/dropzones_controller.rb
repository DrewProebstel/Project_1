class DropzonesController < ApplicationController
  def index
    @dropzones = Dropzone.order(created_at: :desc)
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

  def edit
    @dropzone = Dropzone.find(params[:id])
  end

  def update
    @dropzone = Dropzone.find(params[:id])
    @dropzone.update(dropzone_params)
    redirect_to '/dropzones'
  end

private
  def dropzone_params
    params.permit(:windtunnel, :employees, :city, :name, :created_at, :updated_at)
  end
end
