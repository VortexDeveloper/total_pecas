class AddFieldToCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :father, foreign_key: true
  end
end
