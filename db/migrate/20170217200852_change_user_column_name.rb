class ChangeUserColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :advertisements, :user_id, :owner_id
  end
end
