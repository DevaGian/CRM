class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :company_id
      t.integer :referent_id
      t.date :data
      t.date :activation_data

      t.timestamps null: false
    end
  end
end
