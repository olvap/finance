require "spec_helper"

describe CategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/users/1/categories").should route_to("categories#index", user_id: "1")
    end

    it "routes to #new" do
      get("/users/1/categories/new").should route_to("categories#new", user_id: "1")
    end

    it "routes to #show" do
      get("/users/1/categories/1").should route_to("categories#show", :id => "1", user_id: "1")
    end

    it "routes to #edit" do
      get("/users/1/categories/1/edit").should route_to("categories#edit", :id => "1", user_id: "1")
    end

    it "routes to #create" do
      post("/users/1/categories").should route_to("categories#create", user_id: "1")
    end

    it "routes to #update" do
      put("/users/1/categories/1").should route_to("categories#update", :id => "1", user_id: "1")
    end

    it "routes to #destroy" do
      delete("/users/1/categories/1").should route_to("categories#destroy", :id => "1", user_id: "1")
    end

  end
end
