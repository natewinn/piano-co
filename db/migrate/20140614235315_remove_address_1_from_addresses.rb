class RemoveAddress1FromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :address_2, :string
  end
end
