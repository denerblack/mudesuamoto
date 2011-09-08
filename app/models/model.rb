class Model < ActiveRecord::Base
  belongs_to :brand
  has_many :models_years
  has_many :years, :through => :models_years
end
