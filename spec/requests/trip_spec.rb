require 'spec_helper'

describe "Trip generation Page" do

  subject { page }
  let(:submit) { "Show me my itinerary" }
  let (:content) { 'Do you love traveling and planing your trips in advance?
    Are you a middle age person planning your backpacker dream trip to Europe?
    Do you need some help on planning a trip adapted just to your preferences?
    Are you dizzy with the amount of information you have found about it?'}
  let (:page_title) { 'Home'}
  before {visit home_path}

  #TODO: Add validations
  #describe "with invalid trip information should stay in page" do
  #  it { should have_title(full_title(page_title)) }
  #  it { should have_content(content)}
  #  click_button "Show me my itinerary"
  #  it { should have_title(full_title(page_title))} #shouldn't redirect
  #end

  #describe "with valid information should show got to itinerary page" do
  #  before do
  #    fill_in "Start date",                 with: "1"
  #    fill_in "End date",                   with: "1"
  #    fill_in "Europe zone",                with: "1"
  #    fill_in "Transportation preference",  with: "1"
  #    #Fixme: Spelling in sighseeing. Migration did not worked :()
  #    fill_in "Sighseeing preference",      with: "1"
  #  end
  #
  #  #click_button submit
  #  it { should have_title(full_title('Itinerary')) }
  #end
end