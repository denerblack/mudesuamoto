class Service < ActiveRecord::Base
  has_many :services_parts
  has_many :parts, :through => :services_parts
  
  def add_parts(parts)
    parts_ids = self.parts.collect(&:id)
    # self.parts << Part.where("id IN (?)",parts - parts_ids).all
    Part.where("id IN (?)",parts).all do |part|     
      if !(self.parts.find part)
        self.parts << part 
      end
    end
    # puts parts_ids - parts
    # self.parts.delete(Part.where("id IN (?)",parts_ids - parts))
  end
end
