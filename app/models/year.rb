class Year < ActiveRecord::Base
  has_many :models_years
  has_many :models, :through => :models_years
end
