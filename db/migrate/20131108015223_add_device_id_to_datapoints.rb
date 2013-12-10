class AddDeviceIdToDatapoints < ActiveRecord::Migration
  def change
    add_column :datapoints, :device_id, :integer
  end
end
