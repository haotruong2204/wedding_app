class PostsController < ApplicationController
  layout "dashboard"

  def show
    @post = Post.find params[:id]
  end
end
