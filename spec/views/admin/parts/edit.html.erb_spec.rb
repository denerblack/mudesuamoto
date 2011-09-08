require 'spec_helper'

describe "admin/parts/edit.html.erb" do
  before(:each) do
    @admin_part = assign(:admin_part, stub_model(Admin::Part,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit admin_part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_parts_path(@admin_part), :method => "post" do
      assert_select "input#admin_part_name", :name => "admin_part[name]"
      assert_select "textarea#admin_part_description", :name => "admin_part[description]"
    end
  end
end
