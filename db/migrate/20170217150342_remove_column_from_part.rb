class RemoveColumnFromPart < ActiveRecord::Migration[5.0]
  def change
    remove_reference :parts, :category, foreign_key: true
  end
end
