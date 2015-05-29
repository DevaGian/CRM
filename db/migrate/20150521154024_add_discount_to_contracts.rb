class AddDiscountToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :discount, :integer
  end
end
