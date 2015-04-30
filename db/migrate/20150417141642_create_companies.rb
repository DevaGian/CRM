class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :referent_id
      t.integer :address_id
      t.string :ragione_sociale
      t.string :piva, limit: 16
      t.string :phone_number, limit: 10
      t.string :fax, limit: 10
      t.string :mail
      t.string :iban, limit: 27

      t.timestamps null: false
    end
  end
end
