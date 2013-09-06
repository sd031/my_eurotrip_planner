require 'spec_helper'

describe "Trip pages" do

  subject { page }

  describe "Home page" do
    before { visit home_path }
    it { should have_content('Do you love traveling and planing your trips in advance?
    Are you a middle age person planning your backpacker dream trip to Europe?
    Do you need some help on planning a trip adapted just to your preferences?
    Are you dizzy with the amount of information you have found about it?')}
    it { should have_title(full_title('Home')) }
    it { should have_link("Show me my itinerary", href: itinerary_path)}
  end

  describe "Itinerary page" do
    before { visit itinerary_path }

    it { should have_content('Awesome! We have found a nice option just for you! Actually this is the preferred
 route most people followed!') }
    it { should have_title(full_title('Itinerary')) }
  end
end

