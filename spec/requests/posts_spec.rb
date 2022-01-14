require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) { get user_posts_path user_id: 32 }

    it 'returns http 200 success' do
      expect(response).to have_http_status(200)
    end
    it 'should render the correct template' do
      expect(response).to render_template(:index)
    end
    it 'should have the text Posts' do
      expect(response.body).to include('show the posts of a user')
    end
  end


end


# RSpec.describe "Posts controller", type: :request do
#   describe "GET posts routes" do
#     describe "GET /users/:user_id/posts" do
#       before(:each) { get "/users/1/posts" }

#       it "should return 200 http_status_code" do
#         expect(response).to have_http_status(:success)
#       end
#       it 'should render the correct template' do
#         expect(response).to render_template(:index)
#       end
#       it 'should have the text: show the posts of a user' do
#         expect(response.body).to include('show the posts of a user')
#       end
#     end


#   end
# end

