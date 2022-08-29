class EnquiriesController < ApplicationController
  before_action :check_if_logged_in

  def new
    @enquiry = Enquiry.new
  end

  def create

    # To make sure that the query created belong to the logged in user
    @user = User.find params[:id]
    @enquiry = Enquiry.new enquiry_params

    @enquiry.user_id = @current_user.id
    @enquiry.save

    if @enquiry.persisted?
      redirect_to enquiries_path(@user.id)
    else
      render :new
    end


  end

  def index
    @enquiry = Enquiry.new
    @user = User.find params[:id]
    @enquiries = @user.enquiries
    # raise 'hel'
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    Enquiry.destroy
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:query)
  end

end
