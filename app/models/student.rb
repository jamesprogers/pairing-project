class Student < ActiveRecord::Base
  has_many :student_timeslots
  has_many :timeslots, through: :student_timeslots
  belongs_to :challenge
  has_many :pairs, through: :pairs_students


  validates :name, presence: true, uniqueness: true
  validates :challenge_id, presence: true

  def matching_challenge(student)
    self.challenge == student.challenge
  end

  def available_times
    self.timeslots.map do |timeslot|
      timeslot.time
    end
  end

  def matching_time(student)
    self.available_times & student.available_times
  end


end
