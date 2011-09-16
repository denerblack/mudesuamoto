require 'spec_helper'

describe Part do
  fixtures :parts
  Factory.define :part do |part|
    part.id 1
    part.name "Pneu Dianteiro"
    part.description "Pneu Dianteiro"
  end
  describe "Get hash table id and name" do
  it "get id=> 1, name=> Pneu Dianteiro" do
    # get # :hash_part
    part = Factory(:part)
    part.hash_part.should eq(Hash['id', 1, "label", 'Pneu Dianteiro'])
    
  end
  end
end
