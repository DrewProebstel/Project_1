class SkydiversController < ApplicationController
  def index
    @skydivers = Skydiver.where(:wingsuit => true)
    # @skydivers = Skydiver.all
  end
  def show
    @skydiver = Skydiver.find(params[:id])
  end

  def edit
  @skydiver =Skydiver.find(params[:id])
  end

  def update
  @skydiver = Skydiver.find(params[:id])
  @skydiver.update(skydiver_params)
  redirect_to "/skydivers/#{params[:id]}"
  end
  private
    def skydiver_params
        params.permit(:wingsuit, :jumps, :first_name, :last_name, :created_at, :updated_at)
    end
end
