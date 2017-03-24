class StudentTimeslot < ActiveRecord::Base
  belongs_to :student
  belongs_to :timeslot

  def self.ids_by_student(student_id)
    ids = []
    self.all.each do |student_timeslot|
      if student_timeslot.student_id == student_id
        ids << student_timeslot.id
      end
    end
    ids
  end


end
