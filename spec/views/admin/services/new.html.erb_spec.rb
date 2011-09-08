require 'spec_helper'

describe "admin/services/new.html.erb" do
  before(:each) do
    assign(:admin_service, stub_model(Admin::Service,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new admin_service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_services_path, :method => "post" do
      assert_select "input#admin_service_name", :name => "admin_service[name]"
      assert_select "textarea#admin_service_description", :name => "admin_service[description]"
    end
  end
end
