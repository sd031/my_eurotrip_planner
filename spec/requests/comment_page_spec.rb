require 'spec_helper'

  describe "Comment Page" do
    subject { page }
    let(:submit) { "Submit" }
    before {visit comment_path}

    shared_examples_for "all comment pages" do
      it { should have_title(full_title(page_title)) }
      it { should have_content(content)}
    end

    describe "Leave a comment page" do
      let (:content) {"Please, leave us your comment!"}
      let(:page_title) { "Leave us your comment" }

       it_should_behave_like "all comment pages"
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

      it "should create a comment and redirect to Contact page" do
        expect { click_button submit }.to change(Comment, :count).by(1)
        should have_title(full_title('Contact Us'))
      end
    end
end