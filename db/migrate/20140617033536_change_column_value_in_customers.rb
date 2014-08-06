class ChangeColumnValueInCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :zip_code, :integer
    add_column :customers, :zip_code, :string  
  end
end
