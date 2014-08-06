class ChangeValuesOfCustomers < ActiveRecord::Migration
  def change
  	rename_table :addresses, :alt_addresses  	

		rename_table :contacts, :alt_contacts

		add_column :customers, :address_1, :string
		add_column :customers, :city, :string
		add_column :customers, :state, :string
		add_column :customers, :zip_code, :string
		add_column :customers, :latitude, :float
		add_column :customers, :longitude, :float		
		add_column :customers, :phone_type, :string
		add_column :customers, :phone, :string	

		rename_table :eaddresses, :alt_emails

  	drop_table :fullcalendar_engine_event_series

  	drop_table :fullcalendar_engine_events

		rename_table :phone_numbers, :alt_phones
  
  end
end
