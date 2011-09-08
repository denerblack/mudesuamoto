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

describe Admin::BrandsController do
  fixtures :brands

  Factory.define :brand do |brand|
    brand.name "Sundown"
  end 
  
  # This should return the minimal set of attributes required to create a valid
  # Brand. As you add validations to Brand, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {:name => "Kawazaki"}
  end

  describe "GET index" do
    it "assigns all brands as @brands" do
      # brand = Brand.create! valid_attributes
      brands = Brand.all
      get :index
      assigns(:brands).should eq(brands)
    end
  end

  describe "GET show" do
    it "assigns the requested brand as @brand" do
      brand = Brand.find 1
      get :show, :id => brand.id.to_s
      assigns(:brand).should eq(brand)
    end
  end

  describe "GET new" do
    it "assigns a new brand as @brand" do
      get :new
      assigns(:brand).should be_a_new(Brand)
    end
  end

  describe "GET edit" do
    it "assigns the requested brand as @brand" do
      brand = Brand.create! valid_attributes
      get :edit, :id => brand.id.to_s
      assigns(:brand).should eq(brand)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Brand" do
        expect {
          post :create, :brand => valid_attributes
        }.to change(Brand, :count).by(1)
      end

      it "assigns a newly created brand as @brand" do
        post :create, :brand => valid_attributes
        assigns(:brand).should be_a(Brand)
        assigns(:brand).should be_persisted
      end

      it "redirects to the created brand" do
        post :create, :brand => valid_attributes
        response.should redirect_to(admin_brands_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved brand as @brand" do
        # Trigger the behavior that occurs when invalid params are submitted
        Brand.any_instance.stub(:save).and_return(false)
        post :create, :brand => {}
        assigns(:brand).should be_a_new(Brand)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Brand.any_instance.stub(:save).and_return(false)
        post :create, :brand => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested brand" do
        # brand = Brand.create! valid_attributes
        brand = Factory(:brand)
        # Assuming there are no other brands in the database, this
        # specifies that the Brand created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Brand.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => brand.id, :brand => {'these' => 'params'}
      end

      it "assigns the requested brand as @brand" do
        # brand = Brand.create! valid_attributes
        brand = Factory(:brand)
        put :update, :id => brand.id, :brand => {:name => "Sundown"}
        assigns(:brand).should eq(brand)
      end

      it "redirects to the brand" do
        # brand = Brand.create! valid_attributes
        brand = Factory(:brand)
        put :update, :id => brand.id, :brand => valid_attributes
        response.should redirect_to(admin_brands_path)
      end
    end

    describe "with invalid params" do
      it "assigns the brand as @brand" do
        brand = Brand.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Brand.any_instance.stub(:save).and_return(false)
        put :update, :id => brand.id.to_s, :brand => {}
        assigns(:brand).should eq(brand)
        # get :edit, :id => brand.id.to_s
        response.should render_template("edit")
      end

      it "re-renders the 'edit' template" do
        brand = Brand.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Brand.any_instance.stub(:save).and_return(false)
        put :update, :id => brand.id.to_s, :brand => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested brand" do
      brand = Brand.create! valid_attributes
      expect {
        delete :destroy, :id => brand.id.to_s
      }.to change(Brand, :count).by(-1)
    end

    it "redirects to the brands list" do
      brand = Brand.create! valid_attributes
      delete :destroy, :id => brand.id.to_s
      response.should redirect_to(admin_brands_url)
    end
  end

end
