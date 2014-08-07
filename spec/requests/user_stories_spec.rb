require 'rails_helper'

RSpec.describe "UserStories", :type => :request do
  describe "GET /user_stories" do
    it "works! (now write some real specs)" do
      get user_stories_index_path
      expect(response.status).to be(200)
    end
  end
end
