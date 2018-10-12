require 'rails_helper'

describe Comment do
  context "when the product has comments" do

        let(:user) {User.create!(email:"julia@example.com", password:"123456")}
        let(:product){ Product.create!(name: "Cusion")}
        let(:comment) {Comment.create(user_id: user.id, product_id: product.id, body: "Dies ist ein Text")}

        it "not valid without a rating" do
          comment.rating = nil
          expect(comment).to_not be_valid
        end
    end
end
