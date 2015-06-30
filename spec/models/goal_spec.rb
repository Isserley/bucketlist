require 'rails_helper'

RSpec.describe Goal, type: :model do

  context "validations" do

    it "has a valid factory" do
      goal = FactoryGirl.build(:goal)
      expect(goal).to be_valid
    end

    it "should not be valid if name_of_goal nil" do
      goal = FactoryGirl.build(:goal, goal_title: nil)
      expect(goal.to_not be_valid
    end

end
