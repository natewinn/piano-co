class CreatePianos < ActiveRecord::Migration
  def change
    create_table      :pianos do |t|
    	t.string			  :brand
			t.string			  :model
			t.string			  :size
			t.string			  :serial_number
			t.string			  :type
			t.string			  :company_notes
			t.integer			  :service_interval
			t.integer			  :customer_id
      t.timestamps    
    end
  end
end