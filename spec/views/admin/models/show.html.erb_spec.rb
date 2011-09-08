require 'spec_helper'

describe "admin/models/show.html.erb" do
  before(:each) do
    @model = assign(:model, stub_model(Model,
      :name => "ZZN",
      :brand_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/ZZN/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
