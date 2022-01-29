class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    @comments = @post.comments
    @likes = @post.likes_counter + 1
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.create(post_params)
    # @post.save
    # redirect_to user_posts_path(@user)
    if @post.save
      flash[:notice] = 'Post created!'
      redirect_to user_posts_path(@user)
    else
      flash.now[:alert] = 'Failed to create post!'
      render :new
    end
  end

  def new
    
    @user = User.find(params[:user_id])
    @post = @user.posts.new
  end

  def post_params
    params.require(:post).permit(:title, :text, :comments_counter, :likes_counter)
  end
end
