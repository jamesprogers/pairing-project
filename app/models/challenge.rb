class Challenge < ActiveRecord::Base
  has_many :pairs
  has_many :students

  validates :name, presence: true
  validates :description, presence: true
end
