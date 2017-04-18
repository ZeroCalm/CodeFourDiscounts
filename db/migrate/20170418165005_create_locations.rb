class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :location_name
      t.string :location_address
      t.string :location_description
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
