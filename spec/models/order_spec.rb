require 'rails_helper'

describe Order do

    let(:product) { Product.create!(name:"Postcard", description:"I am a description", image_url:"about.overview_1.jpg" )}

    let(:user) { User.create!(email: "mail@mail.com", password: "Password3")}

    it "is a valid order" do
      expect(Order.new( user: user, product: product, total: 1)).to be_valid
    end

    it "is not valid without a user" do
      expect(Order.new( product: product, total: 1)).not_to be_valid
    end

    it "is not valid without product" do
      expect(Order.new( user: user,total: 1)).not_to be_valid
    end
  end
