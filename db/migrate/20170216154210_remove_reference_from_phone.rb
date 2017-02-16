class RemoveReferenceFromPhone < ActiveRecord::Migration[5.0]
  def change
    remove_reference :phones, :user, foreign_key: true
  end
end
