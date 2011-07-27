require 'spec_helper'

describe HomeController do
  fixtures :brands

  describe "GET 'index'" do
    it "Brands should be not empty " do
      Brand.should_receive(:all).and_return([1,2])
      get 'index' 
      # should_assign :brands => [Brand, :all]
      assigns[:brands].should == [1,2]
      
      # response.should be_success
    end
  end

end
