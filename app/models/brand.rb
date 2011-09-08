class Brand < ActiveRecord::Base
  has_many :models
  
  validates_presence_of :name, :message => 'blank'
end
