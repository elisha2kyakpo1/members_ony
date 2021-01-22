class ApplicationController < ActionController::Base
    before_action :require_login

    private 

    def require_login
        unless logged_in?
            flash[:error] = "Log in required to access this section"
            redirect_to new_login_url 
        end 
    end 
end
