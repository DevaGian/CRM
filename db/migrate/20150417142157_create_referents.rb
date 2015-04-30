class CreateReferents < ActiveRecord::Migration
  def change
    create_table :referents do |t|
      t.string :name
      t.string :surname
      t.string :role
      t.string :phone, limit: 10
      t.string :mail

      t.timestamps null: false
    end
  end
end
