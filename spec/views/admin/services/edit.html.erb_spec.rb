require 'spec_helper'

describe "admin/services/edit.html.erb" do
  before(:each) do
    @admin_service = assign(:admin_service, stub_model(Admin::Service,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit admin_service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_services_path(@admin_service), :method => "post" do
      assert_select "input#admin_service_name", :name => "admin_service[name]"
      assert_select "textarea#admin_service_description", :name => "admin_service[description]"
    end
  end
end
