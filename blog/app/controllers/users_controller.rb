class UsersController < ApplicationController
  def index
    @current_user = current_user
    @posts = Post.where(user_id: @current_user.id ).reverse
  end 
  def new
    @user = User.new 
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id  
      redirect_to users_path 
    else  
      render 'new'
    end 
  end
  def show
    @user = User.find(params[:id])
    @current_user = current_user
    @posts = Post.where(user_id: @user.id) 
  end
  def edit
    @current_user = current_user 
  end
  def update
    @current_user = current_user
    if @current_user.update_attributes(params[:user])
      redirect_to users_path
    else
      render 'edit'
    end
  end
  def destroy
    @current_user = current_user
    if @current_user.destroy
      session[:user_id] = nil
      redirect_to root_path
    end
  end
end
