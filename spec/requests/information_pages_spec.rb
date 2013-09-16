require 'spec_helper'

describe "InformationPages" do
  subject { page }

  shared_examples_for "all information pages" do
    it { should have_title(full_title(page_title)) }
    it { should have_content(content) }
  end

  describe "About page" do
    before { visit about_path }

    let (:content) { 'We are a team of young people as excited as you about traveling to Europe.
We have been building a nice community with other travelers and Europe natives that help us enrich this site and provide you with the best alternatives to make your trip come true!
You are invited to join us either if you are planning your trip or you have just come back from it.... or if you just love this idea, please ' }
    let(:page_title) { "About" }

    it_should_behave_like "all information pages"
    #TODO: Improve this test to use the click_link method instead.
    it { should have_link('contact us!', href: contactus_path) }
  end

  describe "Contact Us page" do
    let (:content) { "We will be very glad to hearing from you!" }
    let(:page_title) { "Contact Us" }
    let(:content_for_comments) { "Do you want to see what others have been saying? You are also welcome to " }

    before { visit contactus_path() }

    it_should_behave_like "all information pages"
    it { should have_link('Leave us a comment!', href: new_comment_path) }
    it { should have_content(content_for_comments) }

    #TODO: Add validation of comments information. Just tested in the browser as could not make this work.
    #Add pagination. 9.34
    #it { should have_content(comments)}

  end


end
