class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_user
    @user = User.where(:id => session[:user_id]).first
    redirect_to "/" unless @user
  end
end
