class SkydiversController < ApplicationController
  def index
    @skydivers = Skydiver.all
  end
  def show
    @skydiver = Skydiver.find(params[:id])
  end
end
