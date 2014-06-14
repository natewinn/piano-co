class CreateEmails < ActiveRecord::Migration
  def change
    create_table      :emails do |t|
			t.boolean 	    :primary
			t.string		    :type
			t.string		    :email_address
			t.integer		    :customer_id
      t.timestamps    
    end
  end
end
