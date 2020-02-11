class SessionsController < ApplicationController
  before_action :redirect_if_logged_in, only: [:new, :create]

  def new
  end

  def create
    u = User.find_by(username: params[:session][:username])
    if u
      auth = u.authenticate(params[:session][:password])
      if auth
        session[:user_id] = u.id
        flash[:success] = "You successfully logged in"
        redirect_to root_path
      end
    else
      flash.now[:error] = "You credentials are wrong"
      render :new

    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You successfully logged out"
    redirect_to login_path
  end

  private

  def redirect_if_logged_in
    if logged_in?
      flash[:warning] = "You are already logged in"
      redirect_to root_path
    end
  end

end
