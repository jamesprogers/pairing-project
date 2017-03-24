class Student < ActiveRecord::Base
  has_many :timeslots, through: :student_timeslot
  belongs_to :challenge
  has_many :pairs, through: :pairs_students


  validates :name, presence: true, uniqueness: true
  validates :challenge_id, presence: true

  def matching_challenge(student)
    self.challenge == student.challenge
  end

  def matching_time(student)
    matching_timeslots = self.timeslots & student.timeslots
  end

end
