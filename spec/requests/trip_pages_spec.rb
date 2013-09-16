require 'spec_helper'

describe "Trip pages" do

  subject { page }

  shared_examples_for "all trip pages" do
    it { should have_title(full_title(page_title)) }
    it { should have_content(content) }
  end

  describe "Home page" do
    let (:page_title) { 'Home' }
    let (:content) { 'Do you love traveling and planing your trips in advance?
    Are you a middle age person planning your backpacker dream trip to Europe?
    Do you need some help on planning a trip adapted just to your preferences?
    Are you dizzy with the amount of information you have found about it?' }
    let(:submit) { "Show me my itinerary" }
    let(:trip) { FactoryGirl.create(:trip) }
    TransportationPreference.create(name:"I am flexible")
    SightseeingPreference.create(name: "Most visited cities - Main attractions")
    before { visit home_path }

    it_should_behave_like "all trip pages"

    describe "with valid information" do
      before do
        select("2 months", :from => "Length")
        select("sample_zone", :from => "Europe zone")
        select("I am flexible", :from => "Transportation preference")
        select("Most visited cities - Main attractions", :from => "Sightseeing preference")
      end

      it "should find the itinerary for the trip" do
        click_button submit
        should have_title(full_title("Itinerary"))
      end
    end

    describe "with invalid information" do
      it "should stay in the same page" do
        click_button submit
        should have_title(full_title(page_title))
      end
    end
  end
end