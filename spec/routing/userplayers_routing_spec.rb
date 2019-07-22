require "rails_helper"

RSpec.describe UserplayersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/userplayers").to route_to("userplayers#index")
    end


    it "routes to #show" do
      expect(:get => "/userplayers/1").to route_to("userplayers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/userplayers").to route_to("userplayers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/userplayers/1").to route_to("userplayers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/userplayers/1").to route_to("userplayers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/userplayers/1").to route_to("userplayers#destroy", :id => "1")
    end

  end
end
