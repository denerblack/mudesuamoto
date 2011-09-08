class ModelsYear < ActiveRecord::Base
  belongs_to :model
  belongs_to :year
end
