class CreateServices < ActiveRecord::Migration
  def change
    create_table 		  :services do |t|
  		t.string	 		  :name
			t.string	 		  :cost
			t.integer	 	 	  :duration
			t.string	 		  :category
			t.boolean	 		  :customer_view
			t.text	   		  :description
			t.integer	 		  :company_id
      t.timestamps    
    end
  end
end