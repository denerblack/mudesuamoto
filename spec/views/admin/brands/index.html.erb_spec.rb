require 'spec_helper'

describe "admin/brands/index.html.erb" do
  
  before(:each) do
    assign(:brands, [
      stub_model(Brand, :name => "Honda"),
      stub_model(Brand, :name => "Yamaha")
    ])
  end

  it "renders a list of admin/brands" do
    render
    assert_select "tr>td", :text => "Honda".to_s, :count => 1
  end
end
