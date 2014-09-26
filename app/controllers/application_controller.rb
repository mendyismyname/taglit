class ApplicationController < ActionController::Base
  extend CloudHelper
  protect_from_forgery with: :exception
  helper_method :current_user
  before_filter :require_login
  @cloud = dropbox

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  binding.pry

  private

  def require_login
    unless current_user
      redirect_to login_path
    end
  end
end