require 'spec_helper'

describe HomeController do
  fixtures :brands

  describe "GET 'index'" do
    it "Brands should be not empty " do  
      get :index
      assigns[:brands].should_not be_empty
    end
  end

end
