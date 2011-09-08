require 'spec_helper'

describe "admin/years/edit.html.erb" do
  before(:each) do
    @year = assign(:year, stub_model(Year,
      :year => "MyText"
    ))
  end

  it "renders the edit year form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_years_path(@year), :method => "post" do
      assert_select "input#year_year", :name => "year[year]"
    end
  end
end
