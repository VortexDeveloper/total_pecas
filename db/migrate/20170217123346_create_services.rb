class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.references :advertisement, foreign_key: true

      t.timestamps
    end
  end
end
