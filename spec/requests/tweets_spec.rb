require 'spec_helper'

describe "Tweets" do
  describe "GET /tweets/1" do
    it "works!" do
      visit tweet_path("1")
      page.status_code.should be(200)
    end
  end

  describe "GET first tweet" do
    it "works!" do
      visit("/tweets/1")
      #save_and_open_page
      page.should have_content("This")
    end
  end

  describe "GET invalid tweet" do
    it "works!" do
      visit tweet_path("qwerty")
	  page.should have_content(":(")
    end
  end

end
