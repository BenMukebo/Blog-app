require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # create a new user
  before(:each) do
    @user = User.new(name: 'Test User', bio: 'Test Bio', photo: 'Test Photo')
  end

  # Check if user is not valid without a name
  it 'is not valid without a name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end
  # Check if user is not valid without a bio
  it 'is not valid without a bio' do
    @user.bio = nil
    expect(@user).to_not be_valid
  end
  # Check if user is not valid without a photo
  it 'is not valid without a photo' do
    @user.photo = nil
    expect(@user).to_not be_valid
  end
  # Check if user is not valid with a name longer than 50 characters
  it 'is not valid with a name longer than 50 characters' do
    @user.name = 'a' * 51
    expect(@user).to_not be_valid
  end
  # Check if user is not valid with a bio longer than 255 characters
  it 'is not valid with a bio longer than 255 characters' do
    @user.bio = 'a' * 256
    expect(@user).to_not be_valid
  end
  # Check if user is not valid with a photo longer than 255 characters
  it 'is not valid with a photo longer than 255 characters' do
    @user.photo = 'a' * 256
    expect(@user).to_not be_valid
  end
end
