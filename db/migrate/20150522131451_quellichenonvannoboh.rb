class Quellichenonvannoboh < ActiveRecord::Migration
  def change
    remove_column :services, :costumer_id
    remove_column :costumer_mails, :costumer_id

    add_column :services, :contract_id, :integer
    add_column :costumer_mails, :contract_id, :integer
  end
end
