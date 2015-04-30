class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :route
      t.integer :number
      t.string :cap, limit: 5
      t.string :prov, limit: 2
      t.string :city

      t.timestamps null: false
    end
  end
end
