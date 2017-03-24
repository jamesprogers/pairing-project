class StudentTimeslots < ActiveRecord::Migration
  def change
    create_join_table :student, :timeslots do |t|
      t.references :student, null: false, foreign_key: true
      t.references :timeslot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
