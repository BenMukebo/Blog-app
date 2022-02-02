require 'rails_helper'

RSpec.describe 'User Index Page', type: :feature do
  before(:each) do
    visit user_session_path
    @photo = 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/160/microsoft/58/ballot-box-with-x_2612.png'
    @user1 = User.create(name: 'John Doe', photo: @photo, email: 'joe@mail.com', password: '123456', posts_counter: 6)
    @user2 = User.create(name: 'Michal Smith', photo: @photo, email: 'michal@mail.com', password: '123456',
                         posts_counter: 3)
    fill_in 'Email', with: 'joe@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit users_path
  end

  it 'should see the username of all other users.' do
    expect(page).to have_content 'John Doe'
    expect(page).to have_content 'Michal Smith'
  end

  it 'should see the profile picture for each user.' do
    images = page.all('img')
    user_names = page.all('div h2')
    expect(images.size).to eql(user_names.size)
  end

  it 'should see the number of posts each user has written.' do
    subscribers = page.all('article div span')
    expect(subscribers[0]).to have_content 'Number of posts: 6'
    expect(subscribers[1]).to have_content 'Number of posts: 3'
  end

  it 'should redirect to that user\'s show page when I click on a user.' do
    click_link 'John Doe'
    expect(page).to have_current_path user_path(@user1)
  end
end
