require 'spec_helper'
require 'faker'

RSpec.describe PagesController, :type => :controller do

  describe "POST #send_email should work with valid credentials" do

    before do
      post :send_email,
        email: Faker::Internet.email,
        name: Faker::Name.name,
        company: Faker::Company.name,
        request: { type: 'both' }
    end

    it "SHOULD redirect correctly" do
      expect(response).to redirect_to(contact_path(sent: true))
    end

  end

  describe "POST #send_email should fail with invalid credentials" do

    it "SHOULD fail without an EMAIL" do
      post :send_email,
        email: nil,
        name: Faker::Name.name,
        company: Faker::Company.name,
        request: { type: 'both' }

      expect(response).not_to redirect_to(contact_path(sent: true))
    end

    it "SHOULD fail without a NAME" do
      post :send_email,
        email: Faker::Internet.email,
        name: nil,
        company: Faker::Company.name,
        request: { type: 'both' }

      expect(response).not_to redirect_to(contact_path(sent: true))
    end

    it "SHOULD fail without a COMPANY" do
      post :send_email,
        email: Faker::Internet.email,
        name: Faker::Name.name,
        company: nil,
        request: { type: 'both' }

      expect(response).not_to redirect_to(contact_path(sent: true))
    end

    it "SHOULD fail without a REQUEST TYPE" do
      post :send_email,
        email: Faker::Internet.email,
        name: Faker::Name.name,
        company: Faker::Company.name,
        request: { type: '' }

      expect(response).not_to redirect_to(contact_path(sent: true))
    end

  end

end
