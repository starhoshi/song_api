require "rails_helper"

RSpec.describe MediaHistoriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/media_histories").to route_to("media_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/media_histories/new").to route_to("media_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/media_histories/1").to route_to("media_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/media_histories/1/edit").to route_to("media_histories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/media_histories").to route_to("media_histories#create")
    end

    it "routes to #update" do
      expect(:put => "/media_histories/1").to route_to("media_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/media_histories/1").to route_to("media_histories#destroy", :id => "1")
    end

  end
end
