require 'spec_helper'

describe "Trip pages" do

  subject { page }

  shared_examples_for "all trip pages" do
    it { should have_title(full_title(page_title)) }
    it { should have_content(content)}
    end

  describe "Home page" do
    before { visit home_path }
    let (:content) { 'Do you love traveling and planing your trips in advance?
    Are you a middle age person planning your backpacker dream trip to Europe?
    Do you need some help on planning a trip adapted just to your preferences?
    Are you dizzy with the amount of information you have found about it?'}
    let (:page_title) { 'Home'}

    it_should_behave_like "all trip pages"
    it { should have_link("Show me my itinerary", href: itinerary_path)}
  end

  describe "Itinerary page" do
    before { visit itinerary_path }

    let (:content) {'Awesome! We have found a nice option just for you! Actually this is the preferred
 route most people followed!' }
    let (:page_title) {'Itinerary' }
    it_should_behave_like "all trip pages"
  end

  # add tests for  it { should have_selector('h1', text: 'Contact') }
end

