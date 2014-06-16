class ChangeValuesOfCustomers < ActiveRecord::Migration
  def change
  	remove_column :customers, :primary, :boolean


  	add_column :users, :company_id, :integer
    t.string   "first_name"
    t.string   "last_name"
    t.string   "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at" 
  
  end
end
