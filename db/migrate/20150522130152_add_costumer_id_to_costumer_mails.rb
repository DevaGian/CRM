class AddCostumerIdToCostumerMails < ActiveRecord::Migration
  def change
    add_column :costumer_mails, :costumer_id, :integer
  end
end
