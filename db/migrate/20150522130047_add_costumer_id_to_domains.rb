class AddCostumerIdToDomains < ActiveRecord::Migration
  def change
    add_column :domains, :costumer_id, :integer
  end
end
