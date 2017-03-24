class PairsStudents < ActiveRecord::Base
  belongs_to  :pair
  belongs_to :student
end
