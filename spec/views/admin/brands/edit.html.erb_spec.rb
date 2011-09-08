require 'spec_helper'

describe "admin/brands/edit.html.erb" do
  before(:each) do
    @brand = assign(:brand, stub_model(Brand))
  end

  it "renders the edit admin_brand form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_brands_path(@brand), :method => "post" do
    end
  end
end
