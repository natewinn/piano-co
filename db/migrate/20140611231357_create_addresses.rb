class CreateAddresses < ActiveRecord::Migration
  def change
    create_table      :addresses do |t|
			t.boolean			  :primary
			t.string			  :type
			t.string			  :address_1
			t.string			  :address_2
			t.string			  :city
			t.string			  :state
			t.string			  :zip_code
			t.float 			  :latitude
			t.float				  :longitude
			t.integer			  :customer_id
      t.timestamps    
    end
  end
end
