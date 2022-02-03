require 'rails_helper'

RSpec.describe 'Login page', js: true do
  it 'can see the username and password inputs and the "Submit" button.' do
    visit new_user_session_path
    expect(page).to have_field('Email', type: 'email')
    expect(page).to have_field('Password', type: 'password')
    expect(page).to have_button('Log in', type: 'submit')
  end

  it 'should get a detailed error when I click the submit button without filling in the username and the password' do
    visit new_user_session_path
    fill_in 'Email', with: ''
    fill_in 'Password', with: ''
    click_button 'Log in'
    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'should get a detailed error when I click the submit button after filling
  in the username and the password with incorrect data' do
    visit new_user_session_path
    fill_in 'Email', with: 'yo@mail.com'
    fill_in 'Password', with: 'hsjslkp'
    click_button 'Log in'
    expect(page).to have_content 'Invalid Email or password.'
  end

  it 'should redirect to the root page when I click the submit button after filling
  in the username and the password with correct data' do
    visit new_user_session_path
    fill_in 'Email', with: 'joe@mail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit root_path
  end
end
