class Part < ActiveRecord::Base
  has_many :services_parts
  has_many :services, :through => :services_parts
  
  def hash_part
    Hash['label', self.name, 'id', self.id]
  end
end
