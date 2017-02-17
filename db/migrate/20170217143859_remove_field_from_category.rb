class RemoveFieldFromCategory < ActiveRecord::Migration[5.0]
  def change
    remove_reference :categories, :part, foreign_key: true
  end
end
