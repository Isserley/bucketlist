require 'rails_helper'

RSpec.describe EntriesController, type: :controller do
  login_user

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
      it "updates an entry" do
        put :update, goal_id: @goal.id, id: entry.id, entry: {entry_title: 'Updated'}
        expect(response).to have_http_status(:redirect)
        expect(entry.reload.entry_title).to eq('Updated')
      end
  end

  describe "POST #create" do
      it "creates an entry" do
        post :create, goal_id: @goal.id, entry: {entry_title: 'Happy'}
        expect(response).to have_http_status(:redirect)
        expect(Entry.last.entry_title).to eq('Happy')
      end
    end


  # describe "DELETE #destroy" do
  #   it "destroys an entry" do
  #     delete :destroy, goal_id: @goal.id, id: entry.id
  #     expect(response).to have_http_status(:redirect)
  #   end
  # end

end
