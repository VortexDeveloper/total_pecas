class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :cnpj
      t.string :social_name
      t.string :address
      t.string :operating_hours
      t.text :description

      t.timestamps
    end
  end
end
