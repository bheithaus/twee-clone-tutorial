require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'MaxFun') }
    it { should have_selector('title', text: "RoR Tut App") }
    it { should_not have_selector('title', text: "| Home") }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('h1', text: 'Help') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', text: 'About Us') }
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: 'RoR Tut App | Contact') }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: 'About Us'
    click_link "Help"
    page.should have_selector 'title', text: 'Help'
    click_link "Contact"
    page.should have_selector 'title', text: 'Contact'
    click_link "Home"
    click_link "Sign up Now!"
    page.should have_selector 'title', text: 'Sign Up'
    click_link "MaxFun"
    page.should have_selector 'title', text: 'App'
  end
end
