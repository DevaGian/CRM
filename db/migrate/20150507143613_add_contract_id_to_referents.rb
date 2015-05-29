class AddContractIdToReferents < ActiveRecord::Migration
  def change
    add_column :referents, :contract_id, :integer
  end
end
