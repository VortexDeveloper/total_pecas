class RemoveColumnFromCompany < ActiveRecord::Migration[5.0]
  def change
    remove_column :companies, :address, :string
  end
end
