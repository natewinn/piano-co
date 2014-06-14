class CreateContacts < ActiveRecord::Migration
  def change
    create_table 			:contacts do |t|
			t.boolean				:primary
			t.string				:salutation
			t.string				:first_name
			t.string				:last_name
			t.string				:customer_id
      t.timestamps    
    end
  end
end
