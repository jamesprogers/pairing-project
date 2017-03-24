class TimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.time :time, null: false

      t.timestamps
    end
  end
end
