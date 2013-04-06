require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have content 'Sample App'" do
      visit "/static_pages/home"
      page.should have_content('Sample App')
    end

    it "should have right title" do
      visit "/static_pages/home"
      page.should have_selector('title', text: "RoR Tut App")
    end

    it "should not have custom page title" do
      visit "/static_pages/home"
      page.should_not have_selector('title', text: "| Home")
    end
  end

  describe "Help page" do

    it "should have content 'Help'" do
      visit "/static_pages/help"
      page.should have_selector('h1', text: 'Help')
    end

    it "should have help title" do
      visit '/static_pages/help'
      page.should have_selector('h1', text: 'Help')
    end
  end

  describe "About page" do

    it "should have content 'About Us'" do
      visit "/static_pages/about"
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have title 'About Us'" do
      visit "/static_pages/about"
      page.should have_selector('title', text: 'About Us')
    end
  end
end
