class PagesController < ApplicationController
skip_before_filter :require_login
before_action :authenticate_user!
  def show
  end

  def brand
  end

  def campaign
  end

  def social
  end
  
  def resources
  end
  
   def training
  end
  
  def support
  end
  
  private

  def require_login
    unless current_user
      redirect_to login_path
    end
  end
end
