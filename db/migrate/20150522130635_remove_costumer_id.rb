class RemoveCostumerId < ActiveRecord::Migration
  def change
    remove_column :suites, :costumer_id
    remove_column :domains, :costumer_id
    remove_column :seos, :costumer_id
    remove_column :web_sites, :costumer_id
    remove_column :blocks, :costumer_id

    add_column :suites, :contract_id, :integer
    add_column :domains, :contract_id, :integer
    add_column :seos, :contract_id, :integer
    add_column :web_sites, :contract_id, :integer
    add_column :blocks, :contract_id, :integer

  end
end
