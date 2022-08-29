class BookingsController < ApplicationController
  before_action :check_if_logged_in
  before_action :check_if_admin, only: [:index]

  def new
    @booking = Booking.new
  end

  def create

    @booking = Booking.new booking_params
    @booking.user_id = @current_user.id
    @booking.save

    if @booking.persisted?
      redirect_to bookings_path
    else
      render :new
    end

  end

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find params[:id]

    if @booking.user_id != @current_user.id
      redirect_to login_path
    end

  end

  def edit
    @booking = Booking.find params[:id]

    if @booking.user_id != @current_user.id
      redirect_to login_path
    end

  end

  def update
    @booking = Booking.find params[:id]

    #check again if this mixtape belongs to the logged in user, as people can still workout the edit URL even if they are not shown

    if @booking.user_id != @current_user.id
      redirect_to login_path
      return
    end

    if @booking.update booking_params

      redirect_to @booking

    else
      render :edit

    end

    # redirect_to booking_path(booking.id)
  end

  def destroy
    Booking.destroy params[:id]

    redirect_to bookings_path
  end

  private
  def booking_params
    params.require(:booking).permit(:eatery_id, :people_number, :phone, :email, :time)
  end

end
