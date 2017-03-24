class Timeslot < ActiveRecord::Base
  validates :time, presence: true
  has_many :student_timeslots
  has_many :students, through: :student_timeslot

  def eastern_time
    self.time - (60*60*4)
  end

  def to_s
    eastern_time.strftime("%l %p" )
  end

end
