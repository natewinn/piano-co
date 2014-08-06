class AddSalutionToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :salutation, :string  
  end
end
