class RemoveOwnerIdAndUserIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :companies, :owner_id, :integer
    remove_column :companies, :user_id, :integer
  end
end
