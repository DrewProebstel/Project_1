class SkydiversController < ApplicationController
  def index
    @skydivers = Skydiver.all
    binding.pry
  end
  # def show
  #   @dropzone = Dropzone.find(params[:id])
  # end
end
