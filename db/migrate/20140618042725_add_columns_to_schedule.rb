class AddColumnsToSchedule < ActiveRecord::Migration
  def change
  
	  add_column :schedules, :buffer_time, :integer
		add_column :schedules, :day_off, :datetime
		add_column :schedules, :day_start, :datetime
		add_column :schedules, :event_color, :string
		add_column :schedules, :all_day_event, :string

  end
end
