class EateriesController < ApplicationController
  before_action :check_if_admin, except: [:index, :show, :eatery_type_index]

  def new
    @eatery = Eatery.new
  end

  def create

    # raise 'hel'
    # Only admins can create eatery and this eatery only belong to the logged admin
    @eatery = Eatery.create eatery_params

    @eatery.eatery_types << EateryType.find(params[:eatery_type_ids])

    @eatery.user_id = @current_user.id
    @eatery.save #equivalent to .create aka DB insert

    if @eatery.persisted?
      redirect_to eateries_path
    else 
      render :new
    end

  end

  def index
    @eateries = Eatery.all
    @eatery_types = EateryType.all
  end

  def eatery_type_index
    @eatery_type = EateryType.find params[:id]
  end

  def show
    @eatery = Eatery.find params[:id]
    @booking = Booking.new
    @booking.eatery_id = params[:id]
  end

  def edit
    @eatery = Eatery.find params[:id]
  end

  def update
    eatery = Eatery.find params[:id]
    eatery.update eatery_params

    redirect_to eatery_path(eatery.id)

  end

  def destroy
    Eatery.destroy params[:id]

    redirect_to eateries_path
  end

  private
  
  def eatery_params
    params.require(:eatery).permit(:name, :cuisine, :location, :price_range, :description, :image)
  end

  def booking_params
    params.require(:booking).permit(:eatery_id, :people_number, :phone, :email, :time)
  end

end
