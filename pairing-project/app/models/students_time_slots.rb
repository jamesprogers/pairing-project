class StudentsTimeSlots < ActiveRecord::Base
  belongs_to :student
  belongs_to :time_slot
end
