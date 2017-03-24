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
  session[:student_id] = @Student.id
  params.each do |k,v|
    if k != "student"
      StudentTimeslot.create(student_id: @student.id, timeslot_id: v.to_i)
    end
  end

  redirect '/pairs'

end

get '/pairs' do
  erb :pairs
end

post '/pairs' do
  
end
