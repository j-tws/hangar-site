class UsersController < ApplicationController
  before_action :check_if_logged_in, except: [:new, :create]
  before_action :check_if_admin, except: [:new, :create, :show]


  def new
    @user = User.new
  end

  def create
    @user = User.create user_params # strong params

    # Did the above User.create actually create an object which was saved into the database? It might not have, if there was a validation error
    if @user.persisted?

      session[:user_id] = @user.id #login autmatically

      redirect_to eateries_path #go to user profile page

    else

      #render the new form  again and ask user to refill form with correct values with the error messages from validation process

      render :new

    end

  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]

  end

  def edit
    @user = User.find params[:id]

    check_if_same_user @user.id
  end

  def update
    @user = User.find params[:id]

    check_if_same_user @user.id
    if @user.update user_params

      redirect_to @user

    else
      render :edit
    end

  end

  def destroy
    User.destroy params[:id]

    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :password, :password_confirmation, :image)

  end


end
