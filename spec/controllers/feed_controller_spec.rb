# require 'rails_helper'

# RSpec.describe FeedController, :type => :controller do

#   before(:each) do
#     devise_setup
#   end

#   it "blocks unauthenticated access" do
#     get :index
#     response.should redirect_to(new_user_session_path)
#   end

#   it "allows authenticated access" do
#     user = User.create!(:foo => 'bar', ...)
#     sign_in user
#     get :index
#     expect(response).to be_success
#   end
# end