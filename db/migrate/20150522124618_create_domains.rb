class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :nome
      t.string :estensione, limit: 4
      t.float :costo
      t.integer :mensilita
      t.float :tot

      t.timestamps null: false
    end
  end
end
