require "spec_helper"

describe TransactionsController do
  describe "routing" do

    it "routes to #index" do
      get("users/1/transactions").should route_to("transactions#index", user_id: "1")
    end

    it "routes to #show" do
      get("users/1//transactions/1").should route_to("transactions#show", :id => "1", user_id: "1")
    end

    it "routes to #edit" do
      get("users/1/transactions/1/edit").should route_to("transactions#edit", :id => "1", user_id: "1")
    end

    it "routes to #update" do
      put("users/1/transactions/1").should route_to("transactions#update", :id => "1", user_id: "1")
    end

    it "routes to #destroy" do
      delete("users/1/transactions/1").should route_to("transactions#destroy", :id => "1", user_id: "1")
    end

  end
end
