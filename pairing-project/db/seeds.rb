i = 0
t = Time.new(2017, 3, 25)
while i < 24 do
  TimeSlot.create!(time: t)
  t += 3600
  i += 1
end
