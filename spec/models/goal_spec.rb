require 'rails_helper'

RSpec.describe Goal, type: :model do

  context "validations" do

    it "has a valid factory" do
      goal = FactoryGirl.build(:goal)
      expect(goal).to be_valid
    end
  end

end
