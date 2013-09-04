require 'spec_helper'

describe "StaticPages" do

  describe "About page" do

    it "About page should have the description of the web site" do
      visit '/static_pages/about'
      expect(page).to have_content('We are a team of young people as excited as you about traveling to Europe.
We have been building a nice community with other travelers and Europe natives that help us enrich this site and provide you with the best alternatives to make your trip come true!
You are invited to join us either if you are planning your trip or you have just come back from it.... or if you just love this idea, please contact us!')
    end
  end

    it "should have the title About" do
      visit '/static_pages/about'
      expect(page).to have_title("Helping you to plan your dream trip to Europe! | About")
    end

  describe "Contact Us page" do

      it "Contact us page should have the contact information" do
        visit '/static_pages/contactus'
        expect(page).to have_content("Please, leave us your comment!")
      end
  end

    it "should have the title Contact Us" do
      visit '/static_pages/contactus'
      expect(page).to have_title("Helping you to plan your dream trip to Europe! | Contact Us")
    end
end
