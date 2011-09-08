require 'spec_helper'

describe "admin/years/show.html.erb" do
  before(:each) do
    @year = assign(:admin_year, stub_model(Year,
      :year => "2010"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/2010/)
  end
end
