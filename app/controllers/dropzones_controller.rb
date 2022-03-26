class DropzonesController < ApplicationController
  def index
    @dropzones = Dropzone.all
  end
end
