class DropzoneSkydiversController < ApplicationController
  def index
    @dropzone = Dropzone.find(params[:id])
    if params[:jump_no] != nil
      @skydivers = @dropzone.skydivers.where("jumps > ?", params[:jump_no].to_i)
    elsif params[:sort] == "true"
      @skydivers = @dropzone.skydivers.order(:last_name)
    else
       @skydivers = @dropzone.skydivers
    end
  end

  def create
    dropzone = Dropzone.find(params[:id])
    skydiver = dropzone.skydivers.create(wingsuit: params[:wingsuit],jumps: params[:jumps],first_name: params[:first_name],last_name: params[:last_name])
    redirect_to "/dropzones/#{dropzone.id}/skydivers"
  end

private
  def dropzone_params
      params.permit(:wingsuit, :jumps, :first_name, :last_name, :created_at, :updated_at)
  end
end
