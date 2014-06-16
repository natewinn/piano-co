class ChangeTableName < ActiveRecord::Migration
  def change
  	rename_table :appointments, :events
  end
end
