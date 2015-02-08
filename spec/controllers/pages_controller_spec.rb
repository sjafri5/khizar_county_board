require 'spec_helper'
require 'faker'

RSpec.describe PagesController, :type => :controller do

  describe "POST #send_email should work with valid credentials" do

    before do
      xhr :post, :send_email,
        email: Faker::Internet.email,
        name: Faker::Name.name,
        company: Faker::Company.name,
        request: { type: 'both' }
    end

    it "SHOULD send the email" do
      expect(ActionMailer::Base.deliveries.empty?).to eq(false)
    end

  end

  describe "POST #send_email should fail with invalid credentials" do

    it "SHOULD fail without an EMAIL" do
      xhr :post, :send_email,
        email: nil,
        name: Faker::Name.name,
        company: Faker::Company.name,
        request: { type: 'both' }

      expect(ActionMailer::Base.deliveries.empty?).to eq(true)
    end

    it "SHOULD fail without a NAME" do
      xhr :post, :send_email,
        email: Faker::Internet.email,
        name: nil,
        company: Faker::Company.name,
        request: { type: 'both' }

      expect(ActionMailer::Base.deliveries.empty?).to eq(true)
    end

    it "SHOULD fail without a COMPANY" do
      xhr :post, :send_email,
        email: Faker::Internet.email,
        name: Faker::Name.name,
        company: nil,
        request: { type: 'both' }

      expect(ActionMailer::Base.deliveries.empty?).to eq(true)
    end

    it "SHOULD fail without a REQUEST TYPE" do
      xhr :post, :send_email,
        email: Faker::Internet.email,
        name: Faker::Name.name,
        company: Faker::Company.name,
        request: { type: '' }

      expect(ActionMailer::Base.deliveries.empty?).to eq(true)
    end

  end

end
