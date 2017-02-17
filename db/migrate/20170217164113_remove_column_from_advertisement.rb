class RemoveColumnFromAdvertisement < ActiveRecord::Migration[5.0]
  def change
    remove_reference :advertisements, :user, foreign_key: true
  end
end
