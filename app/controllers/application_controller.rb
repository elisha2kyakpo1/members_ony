class ApplicationController < ActionController::Base
  # before_action :require_login, if: :devise_controller?

  private

  def require_login
    return if user_signed_in?
    flash[:error] = 'Log in required to access this section'
    redirect_to new_user_password_path        
  end
end
