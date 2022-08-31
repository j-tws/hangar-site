class EnquiriesController < ApplicationController
  before_action :check_if_logged_in

  def new

  end

  def create

    @enquiry = Enquiry.new enquiry_params
    @enquiry.user_id = @current_user.id
    @enquiry.save

    if @enquiry.persisted?
      redirect_to enquiries_path
    else
      puts "========================="
      puts @enquiry.errors.full_messages
      render :new
    end

  end

  def index
    @enquiries = Enquiry.all
    @user_enquiries = @current_user.enquiries
    @enquiry = Enquiry.new

    # raise 'hel'
  end

  def show
    
  end

  def edit
    @enquiry = Enquiry.find params[:id]
  end

  def update
    enquiry = Enquiry.find params[:id]
    enquiry.update enquiry_params

    redirect_to enquiries_path
  end

  def destroy

  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:query, :response)
  end

end
