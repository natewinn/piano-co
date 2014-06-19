class RedoTablesLikeBefore < ActiveRecord::Migration
  def change
  	rename_column :customers, :name, :first_name
  	add_column :customers, :last_name, :string
  	rename_column :customers, :address_2, :city
  	add_column :customers, :state, :string
  	add_column :customers, :zip_code, :string
  end
end