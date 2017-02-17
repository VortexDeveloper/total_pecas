class DropInterestsTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :interests
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
