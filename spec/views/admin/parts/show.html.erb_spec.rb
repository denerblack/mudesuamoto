require 'spec_helper'

describe "admin/parts/show.html.erb" do
  before(:each) do
    @admin_part = assign(:admin_part, stub_model(Admin::Part,
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
