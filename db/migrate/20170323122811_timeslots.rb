class Timeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.time :time, null: false

      t.timestamps
    end
  end
end
