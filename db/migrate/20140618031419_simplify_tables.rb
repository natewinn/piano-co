class SimplifyTables < ActiveRecord::Migration
  def change
  
	drop_table :employees
	drop_table :work_orders
	
	remove_column :companies, :address_2, :string

	remove_column :events, :work_order_id, :integer
	
	add_column :events, :company_id, :integer
	add_column :events, :event_color, :string
	add_column :events, :full_day, :boolean
	add_column :events, :customer_id, :integer
	add_column :events, :confirmed, :boolean
	add_column :events, :paid, :boolean

  end
end