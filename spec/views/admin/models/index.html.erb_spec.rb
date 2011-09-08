require 'spec_helper'

describe "admin/models/index.html.erb" do
  before(:each) do
    assign(:models, [
      stub_model(Model,
        :name => "Biz",
        :brand_id => 1
      ),
      stub_model(Model,
        :name => "CG",
        :brand_id => 1
      ),
        stub_model(Model,
          :name => "Factor",
          :brand_id => 2
        )
    ])
    
  end

  it "renders a list of admin/models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Biz".to_s, :count => 1
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Factor".to_s, :count => 1
    assert_select "tr>td", :text => 2.to_s, :count => 1
  end
end
