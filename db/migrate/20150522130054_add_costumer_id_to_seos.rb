class AddCostumerIdToSeos < ActiveRecord::Migration
  def change
    add_column :seos, :costumer_id, :integer
  end
end
