require 'rails_helper'

RSpec.describe Locale, type: :model do
  before (:all) do
    @locale1 = create(:locale, name: "Heartless Bastards")
  end

  describe "validations" do
    it "is valid with valid attributes" do
      expect(@locale1).to be_valid
    end

    it "has a unique name" do
      locale2 = build(:locale, name: "Heartless Bastards")

      expect(locale2).to_not be_valid
    end

    it "does not work with a blank name" do
      locale2 = build(:locale, name: '')

      expect(locale2).to_not be_valid
    end

    it "blurb cannot be blank" do
      locale2 = build(:locale, blurb: '')

      expect(locale2).to_not be_valid
    end

    it "blurb can repeat" do
    end

    it "citation cannot be blank" do
    end

    it "citation can repeat" do
    end

    it "contact can be blank" do
    end

    it "contact can repeat" do
    end

    it "connections can be blank" do
    end

    it "connections can repeat" do
    end

    it "degree cannot be blank" do
    end

    it "degree can repeat" do
    end

  end
end