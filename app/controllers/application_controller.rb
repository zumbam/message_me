class ApplicationController < ActionController::Base
  helper_method  :logged_in?, :current_user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:error] = "You have to be logged in to perform this action"
      redirect login_path
    end
  end
end
