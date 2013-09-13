require 'spec_helper'

describe "Comment Page" do
  subject { page }
  let(:submit) { "Submit" }
  let(:trip) { FactoryGirl.create(:trip) }
  let(:comment) { FactoryGirl.create(:comment)}

  before { visit new_comment_path }

  describe "Leave a comment page" do
    let (:content) { "Please, leave us your comment!" }
    let(:page_title) { "Leave us your comment" }
    #@trip = Trip.create!(length: 3, europe_zone_id: 1, sightseeing_preference_id: 2,
    #                     transportation_preference_id: 1, name: "Backpacker - basic trip")


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
      select(trip.name, from: "Trip")
      fill_in "Comment", with: comment.comment
    end

    it "should create a comment and redirect to Contact page" do
      expect { click_button submit }.to change(Comment, :count).by(1)
      should have_title(full_title('Contact Us'))
    end

    it "should increment the trip comments" do
     click_button submit
     trip.comments {should include (comment)}
    end
  end
end