class TimeSlot < ActiveRecord::Base
  validates :time, presence: true

  def eastern_time
    self.time - (60*60*4)
  end

  def to_s
    eastern_time.strftime("%l %p" )
  end
end
