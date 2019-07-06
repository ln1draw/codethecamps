require 'rails_helper'

RSpec.describe Locale, type: :model do
  before (:each) do
    @valid_traits = {
      name: "Heartless Bastards",
      degree: 1,
      location: "123 fake st",
      citation: "www.google.com",
      contact: "a@b.c",
      connections: 3,
      blurb: "it's a very bad place"
    }

    @valid_traits_2 = {
      name: "Torturous Bastards",
      degree: 2,
      location: "345 Sesame st",
      citation: "ice.gov",
      contact: "asshole@ice.gov",
      connections: 2,
      blurb: "only shitlords work here"
    }

    @locale1 = create(:locale, 
      @valid_traits
    )
  end

  describe "validations" do
    it "is valid with valid attributes" do
      expect(@locale1).to be_valid
    end

    it "has a unique name" do
      @valid_traits_2[:name] = @valid_traits[:name]
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to_not be_valid
    end

    it "does not work with a blank name" do
      @valid_traits_2[:name] = ''
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to_not be_valid
    end

    it "blurb cannot be blank" do
      @valid_traits_2[:blurb] = ''
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to_not be_valid
    end

    it "blurb can repeat" do
      @valid_traits_2[:blurb] = @valid_traits[:blurb]
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to be_valid
    end

    it "citation cannot be blank" do
      @valid_traits_2[:citation] = ''
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to_not be_valid
    end

    it "citation can repeat" do
      @valid_traits_2[:citation] = @valid_traits[:citation]
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to be_valid
    end

    it "contact can be blank" do
      @valid_traits_2[:contact] = ''
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to be_valid
    end

    it "contact can repeat" do
      @valid_traits_2[:contact] = @valid_traits[:contact]
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to be_valid
    end

    it "connections can be blank" do
      @valid_traits_2[:connections] = ''
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to be_valid
    end

    it "connections can repeat" do
      @valid_traits_2[:connections] = @valid_traits[:connections]
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to be_valid
    end

    it "degree cannot be blank" do
      @valid_traits_2[:degree] = ''
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to_not be_valid
    end

    it "degree can repeat" do
      @valid_traits_2[:degree] = @valid_traits[:degree]
      locale2 = build(:locale, @valid_traits_2)

      expect(locale2).to be_valid
    end

  end
end