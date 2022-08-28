class EateriesController < ApplicationController
  before_action :check_if_admin, except: [:index, :show]

  def new
    @eatery = Eatery.new
  end

  def create

    Eatery.create eatery_params

    redirect_to eateries_path

  end

  def index
    @eateries = Eatery.all
  end

  def show
    @eatery = Eatery.find params[:id]
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

end
