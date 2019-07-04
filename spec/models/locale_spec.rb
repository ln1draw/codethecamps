require 'rails_helper'

RSpec.describe Locale, type: :model do
  before do
    @locale = Locale.new(name: "Heartless Detention Camp Center")
  end

  subject { @locale }

  describe "when name is not present" do 
    before { @locale.name = " " }
    it { should_not be_valid }
  end
end