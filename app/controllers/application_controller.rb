class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  protect_from_forgery  with: :exception
  add_flash_types :sucess, :info, :warning, :danger

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
