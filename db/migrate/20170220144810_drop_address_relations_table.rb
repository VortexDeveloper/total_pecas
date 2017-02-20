class DropAddressRelationsTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :address_relations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
