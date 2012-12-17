require "spec_helper"

describe TransactionsController do
  describe "routing" do

    it "routes to #index" do
      get("accounts/1/transactions").should route_to("transactions#index", account_id: "1")
    end

    it "routes to #new" do
      get("accounts/1//transactions/new").should route_to("transactions#new", account_id: "1")
    end

    it "routes to #show" do
      get("accounts/1//transactions/1").should route_to("transactions#show", :id => "1", account_id: "1")
    end

    it "routes to #edit" do
      get("accounts/1//transactions/1/edit").should route_to("transactions#edit", :id => "1", account_id: "1")
    end

    it "routes to #create" do
      post("accounts/1//transactions").should route_to("transactions#create", account_id: "1")
    end

    it "routes to #update" do
      put("accounts/1//transactions/1").should route_to("transactions#update", :id => "1", account_id: "1")
    end

    it "routes to #destroy" do
      delete("accounts/1//transactions/1").should route_to("transactions#destroy", :id => "1", account_id: "1")
    end

  end
end
