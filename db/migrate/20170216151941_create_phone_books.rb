class CreatePhoneBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_books do |t|
      t.references :user, foreign_key: true
      t.references :phone, foreign_key: true

      t.timestamps
    end
  end
end
