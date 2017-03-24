class Student < ActiveRecord::Base
  has_many :time_slots, through: :student_time_slot
  has_many :completed_challenges, through: :challenges_students, foreign_key: :challenge_id
  has_many :pairs, through: :pairs_students

  validates :name, precense: true

  def pairs

  end
end
