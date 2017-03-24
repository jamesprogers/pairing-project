get '/' do
  @time_slots = TimeSlot.all
  erb :index
end

post '/student_time_slot' do
  binding.pry
  # @student_time_slot = StudentTimeSlot.new
end
