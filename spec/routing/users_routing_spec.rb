require "spec_helper"

describe UsersController do
  describe "routing" do

    it "routes to #new" do
      get("/users/new").should route_to("users#new")
    end

    it "routes to #create" do
      post("/users").should route_to("users#create")
    end

    it "routes to #destroy" do
      delete("/users/1").should route_to("users#destroy", :id => "1")
    end

  end
end
