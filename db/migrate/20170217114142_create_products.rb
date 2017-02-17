class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :status
      t.integer :type
      t.references :advertisement, foreign_key: true

      t.timestamps
    end
  end
end
