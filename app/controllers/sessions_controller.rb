class SessionsController < ApplicationController
  skip_before_filter :require_login
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    binding.pry
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
