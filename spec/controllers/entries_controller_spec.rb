require 'rails_helper'

RSpec.describe EntriesController, type: :controller do

 before(:each) do
    @goal = FactoryGirl.create(:goal)
  end

  let(:entry){FactoryGirl.create(:entry, goal: @goal)}

  describe "GET #index" do
    it "returns http success" do
      get :index, goal_id: @goal.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new, goal_id: @goal.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, goal_id: @goal.id, id: entry.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, goal_id: @goal.id, id: entry.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it "returns http success" do
      put :update, goal_id: @goal.id, id: entry.id
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, goal_id: @goal.id, id: entry.id
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "DELETE #destroy" do
    it "returns http success" do
      delete :destroy, goal_id: @goal.id, id: entry.id
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "PUT #update" do
    it 'updates article successfully' do
      new_title = 'Different Entry'
      put :update, id: entry.id, entry: {title: new_title}
      expect(article.reload.title).to eq(new_title)
      expect(response).to have_http_status(:redirect)
    end
  end

end
