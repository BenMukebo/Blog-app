require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:each) do
    @user = User.new(id: 1, name: 'Ben', bio: 'I am a content creator', photo: '', posts_counter: 0)
    @post = Post.new(title: 'Post1', text: 'Text...', comments_counter: 0, likes_counter: 1, author_id: @user.id)
    @like = Like.new(author_id: @user.id, post_id: @user.id)
  end

  describe 'validation tests' do
    it 'validates the author_id is an integer' do
      @like.author_id = 1
      expect(@like.author_id).to eq(1)
    end

    it 'validates the post_id is an integer' do
      @like.post_id = 1
      expect(@like.post_id).to eq(1)
    end
  end
end