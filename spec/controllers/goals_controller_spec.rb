require 'rails_helper'

RSpec.describe GoalsController, type: :controller do
  login_user

let(:goal){FactoryGirl.create(:goal)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'displays all goals' do
      get :index
      expect(Goal.all.count).to eq(Goal.all.count)
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
    it "updates a goal" do
      put :update, id: goal.id, goal: {goal_title: 'Updated'}
      expect(response).to have_http_status(:redirect)
      expect(goal.reload.goal_title).to eq('Updated')
    end
  end

  describe "POST #create" do
      it "creates a goal" do
        post :create, goal: {goal_title: 'Test'}
        expect(response).to have_http_status(:redirect)
        expect(Goal.last.goal_title).to eq('Test')
      end
    end

    describe "DELETE #destroy" do
        it "deletes a goal" do
          delete :destroy, id: goal.id
          expect(response).to have_http_status(:redirect)
          expect(Goal.all.count).to eq(Goal.all.count)
        end
      end

end
