require 'spec_helper'

describe "admin/services/index.html.erb" do
  before(:each) do
    assign(:admin_services, [
      stub_model(Admin::Service,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Admin::Service,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of admin/services" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
