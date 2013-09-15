require 'spec_helper'

describe CommentsController do

  let(:trip) { FactoryGirl.create(:trip) }

  describe "creating a comment with Ajax" do

    it "should increment the Comments count" do
      expect do
        xhr :post, :create, comment:{name: "Emi", comment: "Comment" }
      end.to change(Comment, :count).by(1)
    end

    it "should respond with success" do
      xhr :post, :create, comment: {name: "Emi", comment: "Comment" }
      expect(response).to be_success
    end
  end
end
