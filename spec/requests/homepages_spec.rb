require 'spec_helper'

describe "Homepage" do
  describe "GET homepage" do
    it "works!" do
      get root_path
      response.status.should be(200)
    end
  end

end
