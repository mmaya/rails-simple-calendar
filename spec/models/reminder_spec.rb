require 'rails_helper'

RSpec.describe Reminder, type: :model do
  describe 'Reminder' do
    it "is valid with valid attributes" do
      expect(build_stubbed(:reminder)).to be_valid
    end
    it "is valid without a color" do
      expect(build_stubbed(:reminder, {color: nil})).to be_valid
    end
    it "is valid with a description size smaller than 30 chars" do
      expect(build_stubbed(:reminder, {description: "Lorem ipsum dolor sit amet" })).to be_valid
    end
    it "is valid with a description size equal to 30 chars" do
      expect(build_stubbed(:reminder, {description: "Lorem ipsum dolor sit amet con"})).to be_valid
    end
    it "is not valid without a description" do
      expect(build_stubbed(:reminder, {description: nil})).to_not be_valid
    end
    it "is not valid with a description size bigger than 30 chars" do
      expect(build_stubbed(:reminder, {description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"})).to_not be_valid
    end
    it "is not valid without a start time" do
      expect(build_stubbed(:reminder, {start_time: nil})).to_not be_valid
    end
    it "is not valid without a end time" do
      expect(build_stubbed(:reminder, {end_time: nil})).to_not be_valid
    end
    it "is not valid with a passed start time" do
      expect(build_stubbed(:reminder, {start_time: 1.day.ago})).to_not be_valid
    end
  end
end