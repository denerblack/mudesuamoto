class ServicesPart < ActiveRecord::Base
  belongs_to :service
  belongs_to :part
end
