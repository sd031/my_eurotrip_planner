require 'spec_helper'

describe "InformationPages" do
  subject { page }

  describe "About page" do
    before { visit about_path }

    it {should have_content('We are a team of young people as excited as you about traveling to Europe.
We have been building a nice community with other travelers and Europe natives that help us enrich this site and provide you with the best alternatives to make your trip come true!
You are invited to join us either if you are planning your trip or you have just come back from it.... or if you just love this idea, please ')}
    it {should have_link('contact us!', href:contactus_path) }
    it {should have_title(full_title("About"))}
  end

  describe "Contact Us page" do
    before {visit contactus_path}
    it {should have_content("Please, leave us your comment!")}
    it {should have_title(full_title("Contact Us")) }
    end
end
