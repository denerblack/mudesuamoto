require 'spec_helper'

describe "admin/models/new.html.erb" do
  before(:each) do
    assign(:model, stub_model(Model,
      :name => "CBR",
      :brand_id => 1
    ).as_new_record)
    assign(:brands,[stub_model(Brand,:name => "Honda"),stub_model(Brand, :name => "Yamaha")])
  end

  it "renders new model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_models_path, :method => "post" do
      assert_select "input#model_name", :name => "model[name]"
      assert_select "select#model_brand_id", :name => "model[brand_id]"
    end
  end
end
