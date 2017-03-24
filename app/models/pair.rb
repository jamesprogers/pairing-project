class Pair < ActiveRecord::Base
  has_many :students, through: :pairs_students
  belongs_to :time_slot
  belongs_to :challenge

  validates :challenge_id, presence: true
  validates :timeslot_id, presence: true

end
