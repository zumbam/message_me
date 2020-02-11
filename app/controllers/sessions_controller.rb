class SessionsController < ApplicationController

  def new
  end

  def create
    u = User.find_by(username: params[:session][:username])
    auth = u.authenticate(params[:session][:password])
    if u && auth
      session[:user_id] = u.id
      flash[:success] = "You successfully logged in"
      redirect_to root_path
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

end
