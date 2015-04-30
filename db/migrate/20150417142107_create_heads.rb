class CreateHeads < ActiveRecord::Migration
  def change
    create_table :heads do |t|
      t.string :name
      t.string :surname
      t.date :born_date
      t.string :born_place
      t.string :cod_fiscale, limit: 16
      t.integer :address_id
      t.string :document_type
      t.string :document_number
      t.date :document_date

      t.timestamps null: false
    end
  end
end
