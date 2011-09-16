require 'spec_helper'

describe Service do
  fixtures :services
  describe 'Add parts' do
    it 'add two parts on service' do
      service = Service.first
      service.add_parts ["2","3"]
      service.parts.size.should eq(2)
      service.parts.first.name.should eq("Pneu Dianteiro")
    end
  end
end
