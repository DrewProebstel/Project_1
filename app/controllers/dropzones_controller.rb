class DropzonesController < ApplicationController
  def index
    @dropzones = Dropzone.all
  end
  def show
    @dropzone = Dropzone.find(params[:id])
  end
end
