class CreateAdvertisements < ActiveRecord::Migration[5.0]
  def change
    create_table :advertisements do |t|
      t.string :title
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
