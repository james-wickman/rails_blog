class SessionsController < ApplicationController
  def new
  	@user = User.new

  end

  def create
  	@user = User.where(email: params[:user][:email]).last
  	if @user && @user.password == params[:user][:password]
  		session[:user_id] = @user.id 
  		redirect_to users_path
  	else
  		redirect_to sessions_new_path
  	end

  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path

  end
end
