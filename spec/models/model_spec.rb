require 'spec_helper'

describe Model do
  fixtures :models
  it "should return two models" do
    Model.find_all_by_brand_id(1).size.should == 2
  end
end
