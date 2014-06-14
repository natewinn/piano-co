class RenameTableName < ActiveRecord::Migration
  def change
  	rename_table :emails, :email_addresses
  end
end
