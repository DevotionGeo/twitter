require 'spec_helper'

describe "Homepage" do
  describe "GET homepage" do
    it "works!" do
      visit root_path
      page.should have_content("Welcome")
    end
  end

  describe "GET homepage" do
    it "works!" do
      visit root_path
      page.should have_content("Here is the 20 most recents tweets")
    end
  end

  describe "GET homepage" do
    it "works!" do
      visit root_path
      page.should have_content("Sign in with Facebook")
    end
  end

  describe "GET homepage" do
    it "works!" do
      visit root_path
      page.should have_content("Home")
    end
  end

end
