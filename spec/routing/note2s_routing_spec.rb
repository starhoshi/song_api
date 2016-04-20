require "rails_helper"

RSpec.describe Note2sController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/note2s").to route_to("note2s#index")
    end

    it "routes to #new" do
      expect(:get => "/note2s/new").to route_to("note2s#new")
    end

    it "routes to #show" do
      expect(:get => "/note2s/1").to route_to("note2s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/note2s/1/edit").to route_to("note2s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/note2s").to route_to("note2s#create")
    end

    it "routes to #update" do
      expect(:put => "/note2s/1").to route_to("note2s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/note2s/1").to route_to("note2s#destroy", :id => "1")
    end

  end
end
