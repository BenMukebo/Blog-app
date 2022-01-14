require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'should returns http 200 success' do
      # get '/users/index'
      get users_path
      expect(response).to have_http_status(:success)
    end


    it 'should render index template correctly template ' do
      get users_path
      expect(response).to render_template(:index)
    end

    it 'should render the correct text in the template' do
      get users_path
      expect(response.body).to include('List of users is here')
    end
  end

  describe 'GET /show' do
    before(:each) { get user_path(32) }
  
    it 'should returns http 200 success' do
      # get '/users/show'
      expect(response).to have_http_status(:success)
    end

    it 'should render the show template ' do
      expect(response).to render_template(:show)
    end

    it 'should include the word: Show the user details by ID' do
      expect(response.body).to include('Show the user details by ID')
    end
  end
end

# RSpec.describe "users controller", type: :request do
#   describe "GET user routes" do
#     describe "GET /users" do
#       before(:example) { get "/users" }

#       it "should return 200 http_status_code" do
#         expect(response).to have_http_status(:ok)
#       end

#       it "should render the correct template" do
#         expect(response).to render_template(:index)
#       end

#       it "should render the correct text in the template" do
#         expect(response.body).to include('List of users is here')
#       end
#     end

#     describe "GET /users/:id" do
#       before(:example) { get "/users/1" }

#       it "should return 200 http_status_code" do
#         expect(response).to have_http_status(:ok)
#       end

#       it "should render the correct template" do
#         expect(response).to render_template(:show)
#       end

#       it "should render the correct text in the template" do
#         expect(response.body).to include('Show the user details by ID')
#       end
#     end
#   end
# end