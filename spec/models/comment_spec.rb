require 'rails_helper'

describe Comment do
    context "when the product has comments" do
        let(:user){ Comment.create(:user) }
        let(:product){ Product.create!(name: "Cusion")}

        before do
            product.comments.create!(body: "This is a text.")

        it "not valid without a rating"
          comment.rating = nil
          expect(comment).to_not be_valid
        end
    end
end
