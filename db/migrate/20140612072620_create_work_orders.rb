class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
			t.string 		  	:cost
			t.boolean				:complete
			t.boolean 		  :paid
			t.integer	 		  :customer_id
			t.integer	 		  :employee_id
			t.integer	 		  :company_id
      t.timestamps
    end
  end
end