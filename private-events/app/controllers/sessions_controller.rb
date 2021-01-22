class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    found_user = User.find_by(username: session_params[:username])
    if found_user
      session[:current_user_id] = found_user.id
      redirect_to user_path(session[:current_user_id])
    else
      @user = User.new
      @user.errors[:base] << "User not found"
      render "new"
    end
  end

  def destroy
    reset_session
    redirect_to new_session_path
  end

  private

  def session_params
    params.require(:user).permit(:username)
  end
end
