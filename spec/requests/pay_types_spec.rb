require 'rails_helper'

RSpec.describe "PayTypes", :type => :request do
  describe "GET /pay_types" do
    it "works! (now write some real specs)" do
      get pay_types_path
      expect(response.status).to be(200)
    end
  end
end
