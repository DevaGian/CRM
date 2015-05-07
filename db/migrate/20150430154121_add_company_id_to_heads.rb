class AddCompanyIdToHeads < ActiveRecord::Migration
  def change
    add_column :heads, :company_id, :integer
  end
end
