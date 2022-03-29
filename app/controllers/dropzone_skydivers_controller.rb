class DropzoneSkydiversController < ApplicationController
  def index
    dropzone = Dropzone.find(params[:id])
    @skydivers = dropzone.skydivers
  end
end
