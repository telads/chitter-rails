class UserController < ApplicationController

  def users
    # params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    @user = User.new(first_name: params[:user][:first_name], last_name: params[:user][:last_name], email: params[:user][:email], password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    @user.save
    session[:current_user_id] = @user.id
  end

end
