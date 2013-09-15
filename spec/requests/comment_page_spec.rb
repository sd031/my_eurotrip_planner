require 'spec_helper'

describe "Comment Page" do
  subject { page }
  let(:submit) { "Submit" }
  let(:comment) { FactoryGirl.create(:comment)}

  before { visit new_comment_path }

  describe "Leave a comment page" do
    let (:content) { "Please, leave us your comment!" }
    let(:page_title) { "Leave us your comment" }

    it { should have_title(full_title(page_title)) }
    it { should have_content(content) }
  end

  describe "with invalid comment information" do
    it "should not create a comment" do
      expect { click_button submit }.not_to change(Comment, :count)
    end
  end

  describe "with valid information" do
    before do

      fill_in "Name", with: comment.name
      fill_in "Email", with: comment.email
      fill_in "Comment", with: comment.comment
    end

    it "should create a comment" do
      expect { click_button submit }.to change(Comment, :count).by(1)
    end
  end
end