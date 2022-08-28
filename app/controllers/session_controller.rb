class SessionController < ApplicationController
  def new
  end

  def create
    #1. check that the email address entered is in the DB
    user = User.find_by email: params[:email]

    #2. did we find a user with that address? AND if the user exist, is the password for this email address correct?

    #. .authenticate will encrypt the password via the entered form on the fly and compare to the user's password_digest
    if user.present? && user.authenticate(params[:password])

      #credentials are correct and will hence succesfully logged in
      # 'session' is a special Rails hash that remembers its contents across page reloads - recall that most variables in our controllers are not shared across reloads this way
      # The way rails causes this session hash to be remembered is by storing it in an http cookie i.e. ask the browser to remember something via response header for this page load
      # for every subsequent request from the browser, it will represent that cookie to the server as a request header

      session[:user_id] = user.id

      redirect_to root_path

    else

      #if user credentials is nil, either no such email or when pass word does not match, it will flash an error and redirect to login path

      flash[:error] = 'Invalid email address or password'

      redirect_to login_path
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path

  end

end
