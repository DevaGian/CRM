class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.string :ragione_sociale
      t.integer :address_id
      t.string :payment_mode
      t.string :bank
      t.string :agency
      t.string :iban, limit: 27

      t.timestamps null: false
    end
  end
end
