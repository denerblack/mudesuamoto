require 'spec_helper'

describe "admin/services/show.html.erb" do
  before(:each) do
    @admin_service = assign(:admin_service, stub_model(Admin::Service,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
