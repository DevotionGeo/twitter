require 'spec_helper'

describe "Users" do
  describe "GET /elniafron62" do
    it "works!" do
      visit user_path("elniafron62")
      page.should have_content("Home")
    end
  end

  describe "GET invalid user" do
      it "works!" do
        visit user_path("thisisatest")
        page.should have_content(":(")
      end
    end

    describe "GET invalid user" do
      it "works!" do
        visit(user_path("thisisanothertest"))
        page.should have_content("This user doesn't exist :(")
      end
    end

    describe "GET invalid user" do
      it "works!" do
        visit user_path("test")
        page.should have_content("Sign in")
      end
    end

end
