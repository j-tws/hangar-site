class EateriesController < ApplicationController
  before_action :check_if_admin, except: [:index, :show, :eatery_type_index, :search]

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

  def search
    # params[:search] is passing the variable :search from the search bar
    #.downcase will lower all string into lowercase characters
    # '%' is used in the beginning, which means you will get the result of all the Eateries that ends with that letter you put in, and if you put '%' at the end, you will get the results of all the words that begins with that letter.
    # .where() is to filter the results
    # the word LIKE (caps) means it is trying to match the variable :search with search: In this case, search: is assigned to @param, where @param is the input by the user to the search bar where we set to lowercase initially

    if params[:search].blank?
      redirect_to eateries_path
      return
    else
      @param = params[:search].downcase
      @results = Eatery.all.where("lower(name) LIKE :search", search: "%#{@param}%")
    end

  end

  private
  
  def eatery_params
    params.require(:eatery).permit(:name, :cuisine, :location, :price_range, :description, :image)
  end

  def booking_params
    params.require(:booking).permit(:eatery_id, :people_number, :phone, :email, :time)
  end

end
