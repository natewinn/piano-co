class ChangeColumnNameEmailAddresses < ActiveRecord::Migration
  def change
  	rename_column :email_addresses, :email_address, :name  
  end
end
