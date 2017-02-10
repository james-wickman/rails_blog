class PostsController < ApplicationController
  def index
    @current_user = current_user
    @friends = Friendship.where(user_id: @current_user.id)
    @posts = Post.all.reverse
    @users = User.all
  end

  def new 
    @current_user = current_user
    @post = Post.new
  end

  def create
    @current_user = current_user
    params[:post][:user_id] = @current_user.id
    @post = Post.new(params[:post])
    if @post.save
      redirect_to users_path

    else
      render 'new'
    end
  end

  def show
    @current_user = current_user
    @posts = Post.all
    @post = Post.find(params[:id])
    @comments = Comment.where(post_id: @post.id)
    
  end

  def edit
    @current_user = current_user
    @post = Post.find(params[:id])
  end

  def update
    @current_user = current_user
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to users_path
    else
      render 'edit'
    end
  end


  def destroy
    @current_user = current_user
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to root_path
    end
  end
end
