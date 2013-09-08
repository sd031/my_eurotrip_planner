require 'spec_helper'

describe "InformationPages" do
  subject { page }

  shared_examples_for "all information pages" do
    it { should have_title(full_title(page_title)) }
    it { should have_content(content)}
  end

  describe "About page" do
    before { visit about_path }

    let (:content) { 'We are a team of young people as excited as you about traveling to Europe.
We have been building a nice community with other travelers and Europe natives that help us enrich this site and provide you with the best alternatives to make your trip come true!
You are invited to join us either if you are planning your trip or you have just come back from it.... or if you just love this idea, please '}
    let(:page_title) { "About" }

    it_should_behave_like "all information pages"

    #TODO: Improve this test to use the click_link method instead.
    it {should have_link('contact us!', href:contactus_path) }
  end

  describe "Contact Us page" do
    let (:content) {"Please, leave us your comment!"}
    let(:page_title) { "Contact Us" }

    let(:comment) { FactoryGirl.create(:comment) }
    before {visit contactus_path(comment)}

    it_should_behave_like "all information pages"

    it { should have_content(comment.name) }
    it { should have_content(comment.email) }
    it { should have_content(comment.comment) }
  end

    describe "Leave a comment page" do
      let (:content) {"Please, leave us your comment!"}
      let(:page_title) { "Leave us your comment" }
      let(:comment) { FactoryGirl.create(:comment) }
      before {visit comment_path(comment)}

      it_should_behave_like "all information pages"

      it { should have_content(comment.name) }
      it { should have_content(comment.email) }
      it { should have_content(comment.comment) }
    end

    describe "with invalid comment information" do
      it "should not create a comment" do
        expect { click_button submit }.not_to change(Comment, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Comment",      with: "comment"
      end

      it "should create a comment" do
        expect { click_button submit }.to change(Comment, :count).by(1)
      end
    end
end
