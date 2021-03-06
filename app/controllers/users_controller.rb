class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
  	@user = User.new(user_params)
  	@user.password = params[:user][:password]
  	if @user.save
  	  session[:user_id] = @user.id
  	  redirect_to root_path
  	else
  	  redirect_to '/users/new'
  	end
  end

  private

  def user_params
  	params.require(:user).permit(:email, :username, :password)
  end
end
