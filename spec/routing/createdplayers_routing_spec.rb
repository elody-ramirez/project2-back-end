require "rails_helper"

RSpec.describe CreatedplayersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/createdplayers").to route_to("createdplayers#index")
    end


    it "routes to #show" do
      expect(:get => "/createdplayers/1").to route_to("createdplayers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/createdplayers").to route_to("createdplayers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/createdplayers/1").to route_to("createdplayers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/createdplayers/1").to route_to("createdplayers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/createdplayers/1").to route_to("createdplayers#destroy", :id => "1")
    end

  end
end
