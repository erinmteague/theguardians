class SessionsController < ApplicationController
  
  def new
	end

	# If the user signing in is a teacher with the correct email and password or a student with the correct username and password, create a new session and redirect the user to the user's show page(teacher or student)
	def create
			@teacher = Teacher.find_by_email(params[:email])
			@student = Student.find_by_username(params[:username])
			@admin = Admin.first
	    if @teacher && @teacher.authenticate(params[:password])
	      session[:teacher_id] = @teacher.id
	      redirect_to teacher_path(@teacher.id)
	    elsif @student && @student.authenticate(params[:password])
	     	session[:student_id] = @student.id
				redirect_to student_path(@student.id)
			elsif @admin && @admin.authenticate(params[:password])
	     	session[:admin_id] = @admin.id
				redirect_to admin_path(@admin.id)
			else     	
	     	redirect_to :back
	    end
	end

	# Clear current session and redirect to the home signin page
	def destroy
		session.clear
		redirect_to root_path
	end

end
