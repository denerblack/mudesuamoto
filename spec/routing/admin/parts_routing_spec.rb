require "spec_helper"

describe Admin::PartsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/parts").should route_to("admin/parts#index")
    end

    it "routes to #new" do
      get("/admin/parts/new").should route_to("admin/parts#new")
    end

    it "routes to #show" do
      get("/admin/parts/1").should route_to("admin/parts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/parts/1/edit").should route_to("admin/parts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/parts").should route_to("admin/parts#create")
    end

    it "routes to #update" do
      put("/admin/parts/1").should route_to("admin/parts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/parts/1").should route_to("admin/parts#destroy", :id => "1")
    end

  end
end
