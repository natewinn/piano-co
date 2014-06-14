class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :addresses, :type, :address_type
		rename_column :emails, :type, :email_type
		rename_column :phone_numbers, :type, :phone_type
		rename_column :pianos, :type, :piano_type
	end
end
