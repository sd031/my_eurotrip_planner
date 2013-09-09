require 'spec_helper'

describe "Trip pages" do

  subject { page }

  shared_examples_for "all trip pages" do
    it { should have_title(full_title(page_title)) }
    it { should have_content(content)}
    end

  describe "Itinerary page" do
    before { visit itinerary_path }

    let (:content) {'Awesome! We have found a nice option just for you! Actually this is the preferred
 route most people followed!' }
    let (:page_title) {'Itinerary' }
    it_should_behave_like "all trip pages"
  end
  #TODO: add tests for  it { should have_selector('h1', text: 'Contact') }

  describe "Estimated Costs page" do

  end

  describe "Report page" do

  end
end

