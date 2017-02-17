class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :year
      t.string :automaker
      t.string :model
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
