require "spec_helper"

describe Admin::YearsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/years").should route_to("admin/years#index")
    end

    it "routes to #new" do
      get("/admin/years/new").should route_to("admin/years#new")
    end

    it "routes to #show" do
      get("/admin/years/1").should route_to("admin/years#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/years/1/edit").should route_to("admin/years#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/years").should route_to("admin/years#create")
    end

    it "routes to #update" do
      put("/admin/years/1").should route_to("admin/years#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/years/1").should route_to("admin/years#destroy", :id => "1")
    end

  end
end
