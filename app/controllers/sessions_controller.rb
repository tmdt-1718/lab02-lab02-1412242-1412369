class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  def new
  end
  def create
    user = User.find_by email: params[:session][:email]
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to friends_path
    else
      flash[:danger] = "Invalid email/password combination"
    end
  end

  def destroy
    log_out
    flash[:success] = "You are logged out"
    redirect_to login_path
  end
end
