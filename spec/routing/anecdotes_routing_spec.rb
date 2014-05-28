require "spec_helper"

describe AnecdotesController do
  describe "routing" do

    it "routes to #index" do
      get("/anecdotes").should route_to("anecdotes#index")
    end

    it "routes to #new" do
      get("/anecdotes/new").should route_to("anecdotes#new")
    end

    it "routes to #show" do
      get("/anecdotes/1").should route_to("anecdotes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/anecdotes/1/edit").should route_to("anecdotes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/anecdotes").should route_to("anecdotes#create")
    end

    it "routes to #update" do
      put("/anecdotes/1").should route_to("anecdotes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/anecdotes/1").should route_to("anecdotes#destroy", :id => "1")
    end

  end
end
