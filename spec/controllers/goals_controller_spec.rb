require 'rails_helper'

RSpec.describe GoalsController, type: :controller do

let(:goal){FactoryGirl.create(:goal)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id: goal.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: goal.id
      expect(response).to have_http_status(:success)
    end
  end
  describe "PUT #update" do
    it "returns http success" do
      put :update, id: goal.id
      expect(response).to have_http_status(:redirect)
    end
  end

  # describe "POST #create" do
  #   it "returns http success" do
  #     post :create
  #     expect(response).to have_http_status(:redirect)
  #   end
  # end

#    describe "DELETE #destroy" do
#     it "returns http success" do
#       delete :destroy, id: entry.id
#       expect(response).to have_http_status(:redirect)
#     end
#   end
end
