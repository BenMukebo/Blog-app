class UsersController < ApplicationController
  def index
    @users = User.all
    # @users = User.all.order(created_at: :desc)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.most_recent_posts
  end
end
