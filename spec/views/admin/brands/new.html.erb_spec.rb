require 'spec_helper'

describe "admin/brands/new.html.erb" do
  before(:each) do
    assign(:brand, stub_model(Brand).as_new_record)
  end

  it "renders new admin_brand form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_brands_path, :method => "post" do
    end
  end
end
