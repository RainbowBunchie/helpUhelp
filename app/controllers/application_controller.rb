class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

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

  def require_admin
    unless current_user.role.title == "admin"
      redirect_to tasks_path
    end
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
