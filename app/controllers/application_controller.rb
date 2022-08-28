class ApplicationController < ActionController::Base

    #first run "fetch_user" function to define @current_user 
    #Because this 'before_action' is set up in the parent class 'Application controller' which every controller inherits from, it will run the method automatically before any controller is run

    before_action :fetch_user 

    def fetch_user
        #check if current user is logged in
        if session[:user_id].present?
            @current_user = User.find_by id: session[:user_id]
        end

        #if eg you have re-seeded since logging-in, session [:user_id] will be defined and contain id, but it will be an invalid id, ie the find_by above will have returned nil.

        unless @current_user.present?
            session[:user_id] = nil #force logout of invalid id
        end
    end

    def check_if_logged_in
        # If the current request (which could be any action of any controller is coming form a user who is NOT logged in, redirect them to login page)
        # Any controller action that should be available only to logged-in users can specify this method as a before_action at the top of the controller class to protect access to those action
        unless @current_user.present?
            flash[:error] = "Please log in to perform that action"
            redirect_to login_path
        end
    end

    def check_if_same_user user_id
        if user_id != @current_user.id
            redirect_to root_path
            return
        end
    end

    def check_if_admin 
        if !@current_user.admin
            redirect_to root_path
        end
    end
    
end
