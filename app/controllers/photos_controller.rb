class PhotosController < ApplicationController
  before_action :check_if_admin

  def new
    @photo = Photo.new
  end

  def create
  end

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find params[:id]
  end

  def edit
    @photo = Photo.find params[:id]
  end

  def update
  end

  def destroy
    Photo.destroy params[:id]
    redirect_to photos_path
  end
end
