class CreateSeos < ActiveRecord::Migration
  def change
    create_table :seos do |t|
      t.string :tipo
      t.string :parole
      t.float :importo
      t.date :attivazione
      t.integer :mensilita

      t.timestamps null: false
    end
  end
end
