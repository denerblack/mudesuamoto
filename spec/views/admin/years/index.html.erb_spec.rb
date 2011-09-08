require 'spec_helper'

describe "admin/years/index.html.erb" do
  before(:each) do
    assign(:years, [
      stub_model(Year,
        :year => "2009"
      ),
      stub_model(Year,
        :year => "2010"
      )
    ])
  end

  it "renders a list of admin/years" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "2009".to_s, :count => 1
  end
end
