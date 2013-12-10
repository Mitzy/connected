class Datapoint < ActiveRecord::Base
  belongs_to :device
  belongs_to :property
end
