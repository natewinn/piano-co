class RenameTableEmailAddresses < ActiveRecord::Migration
  def change
  	rename_table :email_addresses, :e_mail
  end
end
