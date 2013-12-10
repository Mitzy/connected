class CreateDatapoints < ActiveRecord::Migration
  def change
    create_table :datapoints do |t|
      t.integer :value
      t.integer :property_id

      t.timestamps
    end
  end
end
