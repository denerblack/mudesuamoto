require 'spec_helper'

describe Brand do
  fixtures :brands
  it "Brand should not be empty" do
    Brand.all.should_not be_empty
    Brand.first.name.should == "Honda"
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end
