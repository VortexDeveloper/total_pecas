class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.integer :type
      t.integer :operator
      t.string :number

      t.timestamps
    end
  end
end
