require 'rails_helper'

RSpec.describe Entry, type: :model do

  context "validations" do

    it "has a valid factory" do
      entry = FactoryGirl.build(:entry)
      expect(entry).to be_valid
    end
  end
end
