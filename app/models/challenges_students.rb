class ChallengesStudents < ActiveRecord::Base
  belongs_to :student
  belongs_to :challenge
end
