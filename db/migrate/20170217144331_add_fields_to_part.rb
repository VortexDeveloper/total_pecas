class AddFieldsToPart < ActiveRecord::Migration[5.0]
  def change
    add_reference :parts, :category, foreign_key: true
  end
end
