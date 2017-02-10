class HomeController < ApplicationController
  def index
  	@current_user = current_user
  	@posts = Post.last(30).reverse
  end
end
 