class PostsController < ApplicationController
  before_action :authenticate_user!

  def show
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    @post.user_id = @current_user.id

    if @post.save
      flash[:alert] = 'You have created post!'
      redirect_to root_path
    else
      flash[:alert] = "Error, didn't save anything try again!"
      render 'posts/new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
