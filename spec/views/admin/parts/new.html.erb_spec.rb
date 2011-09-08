require 'spec_helper'

describe "admin/parts/new.html.erb" do
  before(:each) do
    assign(:admin_part, stub_model(Admin::Part,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new admin_part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_parts_path, :method => "post" do
      assert_select "input#admin_part_name", :name => "admin_part[name]"
      assert_select "textarea#admin_part_description", :name => "admin_part[description]"
    end
  end
end
