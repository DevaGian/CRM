class CreateWebSites < ActiveRecord::Migration
  def change
    create_table :web_sites do |t|
      t.string :padre
      t.string :servizio
      t.text :descrizione
      t.float :importo
      t.date :attivazione
      t.integer :mensilita

      t.timestamps null: false
    end
  end
end
