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

end
