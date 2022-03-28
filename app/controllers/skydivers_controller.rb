class SkydiversController < ApplicationController
  def index
    @skydivers = Skydiver.all
  end
  # def show
  #   @dropzone = Dropzone.find(params[:id])
  # end
end
