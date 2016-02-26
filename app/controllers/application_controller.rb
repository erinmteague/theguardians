class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Helper Method to define the Student who is currently logged in
  helper_method :current_student
  def current_student
  	@current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end

  # Helper Method to define the Teacher who is currently logged in
  helper_method :current_teacher
  def current_teacher
  	@current_teacher ||= Teacher.find(session[:teacher_id]) if session[:teacher_id]
  end

   # Helper Method to define when the Admin is currently logged in
  helper_method :admin
  def admin
    @admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end
end
