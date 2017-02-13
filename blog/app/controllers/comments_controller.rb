class CommentsController < ApplicationController
  def index
  end
  def new
    @current_user = current_user
    @post = Post.find(params[:id])
    @comment = Comment.new
  end
  def create
    @current_user = current_user
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to users_path
    else
      render 'new'
    end
  end
  def show
  end 
  def edit
    @current_user = current_user
    @comment = Comment.find(params[:id])
  end
  def update
    @current_user = current_user
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      redirect_to users_path
    else
      render 'edit'
    end
  end
  def destroy
    @current_user = current_user
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to root_path
    end
  end
end
