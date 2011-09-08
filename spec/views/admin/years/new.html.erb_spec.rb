require 'spec_helper'

describe "admin/years/new.html.erb" do
  before(:each) do
    assign(:year, stub_model(Year,
      :year => "2011"
    ).as_new_record)
  end

  it "renders new year form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_years_path, :method => "post" do
      assert_select "input#year_year", :name => "year[year]"
    end
  end
end
