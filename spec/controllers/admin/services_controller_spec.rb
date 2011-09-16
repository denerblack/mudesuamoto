require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Admin::ServicesController do
  fixtures :services
  fixtures :parts

  # This should return the minimal set of attributes required to create a valid
  # Service. As you add validations to Service, be sure to
  # update the return value of this method accordingly.
  Factory.define :service do |service1|
    service1.id 3
    service1.name "Troca de Pneu Dianteiro"
    service1.description "Troca de Pneu Dianteiro"
  end

  def valid_attributes
    {:name  => "Troca de Pneu Dianteiro"}
  end

  describe "GET index" do
    it "assigns all admin_services as @admin_services" do
      # service = Service.create! valid_attributes
      get :index
      assigns(:services).should eq(Service.all)
    end
  end

  describe "GET show" do
    it "assigns the requested admin_service as @admin_service" do
      service = Service.create! valid_attributes
      get :show, :id => service.id.to_s
      assigns(:service).should eq(service)
    end
  end

  describe "GET new" do
    it "assigns a new admin_service as @admin_service" do
      get :new
      assigns(:service).should be_a_new(Service)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_service as @admin_service" do
      service = Service.create! valid_attributes
      get :edit, :id => service.id.to_s
      assigns(:service).should eq(service)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Service" do
        expect {
          post :create, :service => valid_attributes
        }.to change(Service, :count).by(1)
      end

      it "assigns a newly created admin_service as @admin_service" do
        post :create, :service => valid_attributes
        assigns(:service).should be_a(Service)
        assigns(:service).should be_persisted
      end

      it "redirects to the created admin_service" do
        post :create, :service => valid_attributes
        response.should redirect_to(admin_service_path(Service.last))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_service as @admin_service" do
        # Trigger the behavior that occurs when invalid params are submitted
        Service.any_instance.stub(:save).and_return(false)
        post :create, :service => {}
        assigns(:service).should be_a_new(Service)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Service.any_instance.stub(:save).and_return(false)
        post :create, :service => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested admin_service" do
        service1 = Factory(:service)
        # Assuming there are no other admin_services in the database, this
        # specifies that the Service created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Service.any_instance.should_receive(:update_attributes).with({"name" => 'Troca', "description" => 'Troca de pneus'})
        put :update, :id => service1.id, :service => {:name => 'Troca', :description => 'Troca de pneus'}
      end

      it "assigns the requested admin_service as @admin_service" do
        service = Service.create! valid_attributes
        put :update, :id => service.id, :service => valid_attributes
        assigns(:service).should eq(service)
      end

      it "redirects to the admin_service" do
        service = Service.create! valid_attributes
        put :update, :id => service.id, :service => valid_attributes
        response.should redirect_to(admin_service_path(service))
      end
    end

    describe "with invalid params" do
      it "assigns the admin_service as @admin_service" do
        service = Service.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Service.any_instance.stub(:save).and_return(false)
        put :update, :id => service.id.to_s, :service => {}
        assigns(:service).should eq(service)
      end

      it "re-renders the 'edit' template" do
        service = Service.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Service.any_instance.stub(:save).and_return(false)
        put :update, :id => service.id.to_s, :service => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_service" do
      service = Service.create! valid_attributes
      expect {
        delete :destroy, :id => service.id.to_s
      }.to change(Service, :count).by(-1)
    end

    it "redirects to the admin_services list" do
      service = Service.create! valid_attributes
      delete :destroy, :id => service.id.to_s
      response.should redirect_to(admin_services_url)
    end
  end

end
