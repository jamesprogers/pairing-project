class TimeSlotStudent < ActiveRecord::Migration
  def change
    create_join_table :time_slots, :students do |t|
      t.references :student, null: false, foreign_key: true
      t.references :time_slot, null: false, foreign_key: true
      t.datetime :time, null: false

      t.timestamps
    end
  end
end
