require 'rails_helper'

RSpec.describe Comment, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
   before(:each) do
    @user = User.new(id: 1, name: 'Ben', bio: 'My bio about my self and else', photo: '', posts_counter: 0)
    @post = Post.new(title: 'Post1', text: 'Some text about the post', comments_counter: 4, likes_counter: 1, author_id: @user.id)
    @comment = Comment.new(text: 'Nice Post', author_id: @user.id, post_id: @user.id)
  end

  describe 'validation tests' do
    it 'validates the author_id is an integer' do
      expect(@comment.author_id).to eq(1)
    end

 
    it 'validates the post_id is an integer' do
      expect(@comment.post_id).to eq(1)
    end

    it 'validates the comment text' do
      expect(@comment.text).to eq('Nice Post')
    end
  end




  it 'is invalid without a post' do
    expect(Comment.new(post: nil)).to be_invalid
end
end
