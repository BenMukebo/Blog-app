require 'rails_helper'

RSpec.describe 'user show view', type: :feature do
  before :each do
    visit user_session_path

    @photo = 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/160/microsoft/58/ballot-box-with-x_2612.png'
    @user1 = User.create!(name: 'John Doe', bio: 'Lorem ipsum dolor sit amet', photo: @photo,
      email: 'joe@mail.com', password: '123456', posts_counter: 6)

    fill_in 'user_email', with: 'joe@mail.com'
    fill_in 'user_password', with: '123456'
    click_button 'Log in'

    @post1 = @user1.posts.create!(title: 'Animal', text: 'lorem_one', comments_counter: 0, likes_counter: 0)
    @post2 = @user1.posts.create!(title: 'Population', text: 'lorem_two', comments_counter: 0, likes_counter: 0)
    @post3 = @user1.posts.create!(title: 'Science', text: 'lorem_one', comments_counter: 0, likes_counter: 0)

    visit user_path(@user1)
  end

  it 'Should see the user\'s profile picture' do
    image_src = page.find('img')['src']
    expect(image_src).to eql @photo
  end

  it 'Should see the user\'s username' do
    expect(page).to have_content 'John Doe'
  end

  it 'Should see the number of posts the user has written' do
    expect(page).to have_content 'Number of posts: 9'
  end

  it 'Should see the user\'s bio' do
    expect(page).to have_content 'Lorem ipsum dolor sit amet'
  end

  it 'Should see the user\'s first 3 posts.' do
    expect(page).to have_content 'lorem_one'
    expect(page).to have_content 'lorem_two'
    expect(page).to have_content 'lorem_one'
  end

  it 'I can see a button that lets me view all of a user\'s posts.' do
    expect(page).to have_content 'See all posts'
  end

  it 'When I click to see all posts, it redirects me to the user\'s post\'s index page.' do
    click_button 'See all posts'
    expect(page).to have_current_path user_posts_path(@user1)
  end
end
# rubocop:enable Metrics/BlockLength
