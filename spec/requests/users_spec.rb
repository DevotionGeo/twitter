require 'spec_helper'

describe "Users" do
  describe "GET /elniafron62" do
    it "works!" do
      get user_path("elniafron62")
      response.status.should be(200)
    end
  end


describe "GET invalid user" do
    it "works!" do
      get user_path("thisisatest")
      response.body.should include(":(")
    end
  end

  describe "GET invalid user" do
    it "works!" do
      visit(user_path("thisisatest"))
      page.should have_content("This user doesn't exist :(")
    end
  end

end
