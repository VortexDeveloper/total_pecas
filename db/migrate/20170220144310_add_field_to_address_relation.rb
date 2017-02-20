class AddFieldToAddressRelation < ActiveRecord::Migration[5.0]
  def change
    add_reference :address_relations, :address, foreign_key: true
  end
end
