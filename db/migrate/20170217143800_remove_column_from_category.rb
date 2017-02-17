class RemoveColumnFromCategory < ActiveRecord::Migration[5.0]
  def change
    remove_column :categories, :part, :string
  end
end
