class AddFieldToPart < ActiveRecord::Migration[5.0]
  def change
    add_reference :parts, :product, foreign_key: true
  end
end
