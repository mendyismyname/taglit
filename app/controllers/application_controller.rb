class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :cloud
  skip_before_filter :require_login

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # def cloud
  #   @cloud ||= CloudDropbox.new.dropbox
  # end

  private

  def require_login
    unless current_user
      redirect_to login_path
    end
  end
end