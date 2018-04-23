class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    if session[:user_id]
      @current_user ||= User.where(id: session[:user_id]).first
    end
  end
  helper_method :current_user

  private

  def require_login
    unless current_user
      redirect_to root_path
    end
  end
  
end
