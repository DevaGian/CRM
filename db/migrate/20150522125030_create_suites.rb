class CreateSuites < ActiveRecord::Migration
  def change
    create_table :suites do |t|
      t.float :cpu_p
      t.float :ram_p
      t.float :hd_p
      t.float :nas_p
      t.integer :cpu_q
      t.integer :ram_q
      t.integer :hd_q
      t.integer :nas_q
      t.float :base
      t.integer :mensilita
      t.date :attivazione
      t.float :tot
      t.integer :costumer_id

      t.timestamps null: false
    end
  end
end
