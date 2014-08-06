class AddEMailToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :e_address, :string
    add_column :customers, :e_address_type, :string 
  end
end
