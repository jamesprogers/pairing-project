def current_student
  @current_student ||= Student.find_by(id: session[:student_id])
end
