class CreateCompanies < ActiveRecord::Migration
  def change
    create_table 		  :companies do |t|
    	t.string	 		  :name
			t.string   		  :phone_number
			t.string	 		  :time_zone
			t.string   		  :address_1
			t.string   		  :address_2
			t.string	 		  :city
			t.string	 		  :state
			t.integer  		  :zip_code
			t.float		 		  :latitude
			t.float	   		  :longitude
			t.integer		 		  :owner_id
			t.datetime	 		  :buffer_time
      t.timestamps        
    end
  end
end