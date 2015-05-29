class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :tipo
      t.float :cu
      t.integer :q
      t.integer :mensilita
      t.float :tot
      t.date :attivazione

      t.timestamps null: false
    end
  end
end
