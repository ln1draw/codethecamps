require 'rails_helper'

RSpec.describe LocalesController, type: :controller do
  # don't forget to add valid attributes here as we update
  # the Locale model and controller
  let(:valid_attributes) {
    {
      name: "Heartless Bastards",
      degree: 1,
      location: "123 fake st",
      citation: "www.google.com",
      contact: "a@b.c",
      connections: 3,
      blurb: "it's a very bad place"
    }
  }

  let(:invalid_attributes) {
    {
      name: '',
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LocaleController. Be sure to keep this updated too.
  let(:valid_session) {
    {}
  }

  describe "GET index" do
    it "assigns all locales as @locales" do
      locale = Locale.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:locales)).to eq([locale])
    end
  end

  describe "GET show" do
    it "assigns the requested locale as @locale" do
      locale = Locale.create! valid_attributes
      get :show, { id: locale.to_param }, valid_session
      expect(assigns(:locale)).to eq(locale)
    end
  end
end