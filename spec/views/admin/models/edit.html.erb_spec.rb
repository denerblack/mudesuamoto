require 'spec_helper'

describe "admin/models/edit.html.erb" do
  fixtures :brands
  
  before(:each) do
    @model = assign(:model, stub_model(Model,
      :name => "Biz",
      :brand_id => 1
    ))
    assign(:brands,[stub_model(Brand,:name => "Honda"),stub_model(Brand, :name => "Yamaha")])
  end

  it "renders the edit model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_models_path(@model), :method => "post" do
      assert_select "input#model_name", :name => "model[name]"
      assert_select "select#model_brand_id", :name => "model[brand_id]"
    end
  end
end
