class RemoveColumnFromPhone < ActiveRecord::Migration[5.0]
  def change
    remove_column :phones, :operator, :string
  end
end
