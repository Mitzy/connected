class AddLocationToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :location, :string
  end
end
