require 'rails_helper'

RSpec.describe "MediaHistories", :type => :request do
  describe "GET /media_histories" do
    it "works! (now write some real specs)" do
      get media_histories_path
      expect(response).to have_http_status(200)
    end
  end
end
