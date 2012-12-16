require "spec_helper"

describe AccountsController do
  describe "routing" do

    it "routes to #index" do
      get("/users/1/accounts").should route_to("accounts#index", user_id: "1")
    end

    it "routes to #new" do
      get("/users/1/accounts/new").should route_to("accounts#new", user_id: "1")
    end

    it "routes to #show" do
      get("/users/1/accounts/1").should route_to("accounts#show", :id => "1", user_id: "1")
    end

    it "routes to #edit" do
      get("/users/1/accounts/1/edit").should route_to("accounts#edit", :id => "1", user_id: "1")
    end

    it "routes to #create" do
      post("/users/1/accounts").should route_to("accounts#create", user_id: "1")
    end

    it "routes to #update" do
      put("/users/1/accounts/1").should route_to("accounts#update", :id => "1", user_id: "1")
    end

    it "routes to #destroy" do
      delete("/users/1/accounts/1").should route_to("accounts#destroy", :id => "1", user_id: "1")
    end

  end
end
