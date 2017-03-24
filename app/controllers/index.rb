get '/' do
  @time_slots = Timeslot.all
  @challenges = Challenge.all
  erb :index
end



post '/student_timeslot' do
  if !Student.find_by(name: params[:student])
    @student = Student.create(name: params[:student], challenge_id: params[:challenge].to_i)
  else
    @student = Student.find_by(name: params[:student])
  end
  session[:student_id] = @student.id
  params.each do |k,v|
    if k != "student"
      if StudentTimeslot.ids_by_student(@student.id)
        binding.pry
        StudentTimeslot.destroy(StudentTimeslot.ids_by_student(@student.id))
      end
      StudentTimeslot.create(student_id: @student.id, timeslot_id: v.to_i)
    end
  end

  redirect '/pairs'

end

get '/pairs' do
  @students = Student.all
  erb :pairs
end

post '/pairs' do

end
