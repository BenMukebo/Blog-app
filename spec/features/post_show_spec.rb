require 'rails_helper'

RSpec.describe 'Post Index Page Features', type: :feature, js: true do
  before(:each) do
    visit user_session_path

    @photo = 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/160/microsoft/58/ballot-box-with-x_2612.png'

    @user1 = User.create!(
      name: 'John Doe', bio: 'This is John Doe bio', photo: @photo, email: 'joe@mail.com',
      password: '123456', posts_counter: 6
    )
    @user2 = User.create!(
      name: 'Michal Smith', bio: 'This is Michal Smith bio', photo: @photo,
      email: 'michal@mail.com', password: '123456', posts_counter: 3
    )

    fill_in 'Email', with: 'mike@gmail.com'
    fill_in 'Password', with: 'mikemike'
    click_button 'Log in'

    @post1 = @user1.posts.create!(
      title: 'Education', text: 'This is first Educat post!', comments_counter: 0, likes_counter: 0
    )
    @post2 = @user1.posts.create!(
      title: 'Sport', text: 'This is second Sport post!', comments_counter: 0, likes_counter: 0
    )
    @post3 = @user2.posts.create!(
      title: 'Bussiness', text: 'This is third!', comments_counter: 0, likes_counter: 0
    )

    # Comments

    @user1.comments.create!(text: 'Really nice post', post: @post1)
    @user2.comments.create!(text: 'Amezing', post: @post1)
    @user2.comments.create!(text: 'Fantastic', post: @post2)

    @user1.likes.create!(post: @post1)
    @user1.likes.create!(post: @post2)
    @user2.likes.create!(post: @post1)
    @user2.likes.create!(post: @post3)

    visit user_posts_path(@user1)
  end

  describe 'I can see' do
    it "post's title" do
      expect(page).to have_content 'Sport'
    end

    it 'who wrote the post.' do
      expect(page).to have_content 'John Doe'
    end

    it 'how many comments it has.' do
      expect(page).to have_content 'Comments: 2'
    end

    it 'how many likes it has.' do
      expect(page).to have_content 'Likes: 2'
    end

    it 'the post body.' do
      expect(page).to have_content 'This is second Sport post!'
    end

    it 'the username of each commentor.' do
      expect(page).to have_content 'John Doe'
    end

    it 'the comment each commentor left.' do
      expect(page).to have_content 'Amezing'
      expect(page).to have_content 'Fantastic'
    end
  end
end
