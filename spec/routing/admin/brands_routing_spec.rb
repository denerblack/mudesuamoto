require "spec_helper"

describe Admin::BrandsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/brands").should route_to("admin/brands#index")
    end

    it "routes to #new" do
      get("/admin/brands/new").should route_to("admin/brands#new")
    end

    it "routes to #show" do
      get("/admin/brands/1").should route_to("admin/brands#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/brands/1/edit").should route_to("admin/brands#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/brands").should route_to("admin/brands#create")
    end

    it "routes to #update" do
      put("/admin/brands/1").should route_to("admin/brands#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/brands/1").should route_to("admin/brands#destroy", :id => "1")
    end

  end
end
