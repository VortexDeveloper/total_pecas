class CreateServiceKinds < ActiveRecord::Migration[5.0]
  def change
    create_table :service_kinds do |t|
      t.references :service, foreign_key: true
      t.references :kind, foreign_key: true

      t.timestamps
    end
  end
end
