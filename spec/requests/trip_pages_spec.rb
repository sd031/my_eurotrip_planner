#require 'spec_helper'
#
#describe "Trip pages" do
#
#  subject { page }
#
#  shared_examples_for "all trip pages" do
#    it { should have_title(full_title(page_title)) }
#    it { should have_content(content) }
#  end
#
#  describe "Home page" do
#    before { visit home_path }
#
#    click_button "Show me my itinerary"
#
#    let(:submit) { "Show me my itinerary" }
#    let (:content) { 'Do you love traveling and planing your trips in advance?
#    Are you a middle age person planning your backpacker dream trip to Europe?
#    Do you need some help on planning a trip adapted just to your preferences?
#    Are you dizzy with the amount of information you have found about it?' }
#    let (:page_title) { 'Home' }
#    let(:trip) { FactoryGirl.create(:trip) }
#
#
#    it_should_behave_like "all trip pages"
#
#    describe "with invalid trip information should stay in page" do
#      click_button "Show me my itinerary"
#      it { should have_title(full_title(page_title))} #shouldn't redirect
#    end
#
#    describe "with valid information should show got to itinerary page" do
#      before do
#        fill_in "Start date",                 with: "1"
#        fill_in "End date",                   with: "1"
#        fill_in "Europe zone",                with: "1"
#        fill_in "Transportation preference",  with: "1"
#        #Fixme: Spelling in sighseeing. Migration did not worked :()
#        fill_in "Sighseeing preference",      with: "1"
#      end
#      click_button submit
#      it { should have_title(full_title('Home')) }
#    end
#  end
#
#  describe "Itinerary page" do
#    before { visit itinerary_path }
#
#    let (:content) { 'Awesome! We have found a nice option just for you! Actually this is the preferred
# route most people followed!' }
#    let (:page_title) { 'Itinerary' }
#    it_should_behave_like "all trip pages"
#  end
#  #TODO: add tests for  it { should have_selector('h1', text: 'Contact') }
#
#  describe "Estimated Costs page" do
#
#  end
#
#  describe "Report page" do
#
#  end
#end
#

require 'spec_helper'

describe "Trip pages" do

  subject { page }

  describe "home" do
    let(:submit) { "Show me my itinerary" }
    let(:trip) { FactoryGirl.create(:trip) }
    before { visit home_path }

    describe "with valid information" do
      let(:trip) { FactoryGirl.create(:trip) }
      before do
        fill_in "Start date",                 with: "1"
        fill_in "End date",                   with: "1"
        fill_in "Europe zone",                with: "1"
        fill_in "Transportation preference",  with: "1"
        #Fixme: Spelling in sighseeing. Migration did not worked :()
        fill_in "Sighseeing preference",      with: "1"
      end

      it "should create a user" do
        expect { click_button submit }.to change(Trip, :count).by(1)
      end
    end

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(Trip, :count)
      end
    end
  end
end