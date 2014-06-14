class CreateCustomers < ActiveRecord::Migration
  def change
    create_table 			  :customers do |t|
    		t.string  		  :organization_name
				t.text				  :notes
				t.integer			  :company_id
      	t.timestamps    
    end
  end
end
