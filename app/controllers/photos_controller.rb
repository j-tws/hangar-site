class PhotosController < ApplicationController
  before_action :check_if_admin

  def new
    @photo = Photo.new
  end

  def create
    # raise 'hel'
    @photo = Photo.new photo_params

    if params[:photo][:url].present?
      
      response = Cloudinary::Uploader.upload params[:photo][:url]

      @photo.url = response["public_id"]
    end

    @photo.save

    redirect_to photos_path
  end

  def index
    @photos = Photo.all
    @eateries = Eatery.all
  end

  def show
    @photo = Photo.find params[:id]
  end

  def edit
    @photo = Photo.find params[:id]
    
  end

  def update
    photo = Photo.find params[:id]
      
    if params[:photo][:url].present?
      
      response = Cloudinary::Uploader.upload params[:photo][:url]

      photo.url = response["public_id"]
    end
  
    photo.update photo_params
    
    redirect_to photos_path
  end

  def destroy
    Photo.destroy params[:id]
    redirect_to photos_path
  end

  private
  def photo_params
    params.require(:photo).permit(:name, :description, :eatery_id)
  end 

end
