class LikesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
    @like = @user.likes.new(post_id: @post.id, author_id: @user.id)

    if @like.save
      flash[:notice] = 'Like created successfully!!'
      redirect_to user_post_path(@user, @post)
    else
      flash.now[:alert] = 'Failed to create Like!!'
    end
  end

  def like_params
    params.require(:likes).permit(:user_id, :post_id)
  end
end
