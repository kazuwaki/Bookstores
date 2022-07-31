class PostsController < ApplicationController
  def index
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to request.referer
  end

  def edit
  end

  private
  def post_params
    params.require(:post).permit(:name, :body, :type_id, :liqueur_id)
  end
end
