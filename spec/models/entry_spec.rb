require 'rails_helper'

RSpec.describe Entry, type: :model do

  context "validations" do

    it "has a valid factory" do
      entry = FactoryGirl.build(:entry)
      expect(entry).to be_valid
    end

    it "should not be valid if entry_title nil" do
      entry = FactoryGirl.build(:entry, entry_title: nil)
      expect(entry).to_not be_valid
    end
  end
end
