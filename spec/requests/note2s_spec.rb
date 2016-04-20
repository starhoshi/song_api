require 'rails_helper'

RSpec.describe "Note2s", :type => :request do
  describe "GET /note2s" do
    it "works! (now write some real specs)" do
      get note2s_path
      expect(response).to have_http_status(200)
    end
  end
end
