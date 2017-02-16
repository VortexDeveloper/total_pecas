class AddFieldToPhoneBook < ActiveRecord::Migration[5.0]
  def change
    add_reference :phone_books, :company, foreign_key: true
  end
end
