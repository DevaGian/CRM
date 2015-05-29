class AddCostumerIdToWebSites < ActiveRecord::Migration
  def change
    add_column :web_sites, :costumer_id, :integer
  end
end
