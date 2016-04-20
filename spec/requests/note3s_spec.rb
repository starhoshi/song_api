require 'rails_helper'

RSpec.describe "Note3s", :type => :request do
  describe "GET /note3s" do
    it "works! (now write some real specs)" do
      get note3s_path
      expect(response).to have_http_status(200)
    end
  end
end
