class FriendshipsController < ApplicationController
  def new
  end


  def index
    @current_user = current_user

    @users = User.all 
    @friends = Friendship.where(user_id: @current_user.id)

  end 


  def create
  	@current_user = current_user
    @friend = User.where(id: params[:id]).last
    @friendship = Friendship.new(user_id: @current_user.id, friend_id: @friend.id)
    if @friendship.save 
      redirect_to users_path

    else
      render 'new'
    end
  end

  def destroy
    @current_user = current_user
    @friendship = Friendship.find(params[:id])
    if @friendship.destroy
      redirect_to users_path
    end
  end
end
