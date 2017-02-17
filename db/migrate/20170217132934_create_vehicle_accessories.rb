class CreateVehicleAccessories < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_accessories do |t|
      t.references :vehicle, foreign_key: true
      t.references :accessory, foreign_key: true

      t.timestamps
    end
  end
end
