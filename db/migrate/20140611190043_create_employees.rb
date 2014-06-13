class CreateEmployees < ActiveRecord::Migration
  def change
    create_table      :employees do |t|
      t.string		    :phone
    	t.datetime      :start_time
			t.datetime      :end_time
			t.datetime      :off_start_time
			t.datetime	    :off_end_time
      t.integer		    :company_id
      t.timestamps    
    end
  end
end
