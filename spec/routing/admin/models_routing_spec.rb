require "spec_helper"

describe Admin::ModelsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/models").should route_to("admin/models#index")
    end

    it "routes to #new" do
      get("/admin/models/new").should route_to("admin/models#new")
    end

    it "routes to #show" do
      get("/admin/models/1").should route_to("admin/models#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/models/1/edit").should route_to("admin/models#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/models").should route_to("admin/models#create")
    end

    it "routes to #update" do
      put("/admin/models/1").should route_to("admin/models#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/models/1").should route_to("admin/models#destroy", :id => "1")
    end

  end
end
