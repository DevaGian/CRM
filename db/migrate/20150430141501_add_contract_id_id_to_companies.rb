class AddContractIdIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :contract_id, :integer
  end
end
