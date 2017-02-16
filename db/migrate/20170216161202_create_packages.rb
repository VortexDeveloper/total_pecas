class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :name
      t.integer :advert
      t.date :expiration_date
      t.integer :visibility
      t.float :price
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
