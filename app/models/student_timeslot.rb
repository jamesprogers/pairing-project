class StudentTimeslot < ActiveRecord::Base
  belongs_to :student
  belongs_to :timeslot
end
