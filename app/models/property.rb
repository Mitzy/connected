class Property < ActiveRecord::Base
  belongs_to :device
  has_many :datapoints
end
