class StudentsController < ApplicationController
  # Find Teacher and Classroom by id params, before completing all actions except for edit and update
  before_action :SetClassroom, except: [:edit, :update, :show, :destroy]
  before_action :SetTeacher

  # Students can only be managed by Teachers
  def new
  	@student = Student.new
  end

  # Create a new Student using the student attributes defined below and then redirect to the Classroom#Show Page
  def create
  	@student = Student.create(student_params)
  	if @student.save 
  		flash[:success] = "Success"
  		redirect_to teacher_classroom_path(@teacher, @classroom)
  	else
  		flash[:fail] = "something went wrong"
  		redirect_to :back
  	end
  end

  def show
  	@student = Student.find(params[:id])
    @comps = Completion.where(completer_id: params[:id])
    render :layout => 'app2'
  end

  def edit
    @student = Student.find(params[:id])
    render :layout => 'app2'
  end

  # Update the Student model attibutes of this student which belongs to this teacher and then redirect to the Teacher#Show page
  def update
  	@student = Student.find(params[:id])
  	if @student.update(student_params)
  		flash[:success] = "Success"
      redirect_to teacher_path(@teacher.id)
  	else
  		flash[:fail] = "something went wrong"
  		redirect_to :back
  	end
  end

  # Delete this instance of a Student and redirect to Teacher#Show
  def destroy
  	@student = Student.find(params[:id])
  	if @student.destroy
  		flash[:success] = "Sucess"
  		redirect_to teacher_path(@teacher.id)
  	else 
  		flash[:fail] = "something went wrong"
  		redirect_to :back
  	end
  end

  private
  # Defines allowable parameters for the Student model
  def student_params
  	params.require(:student).permit(:fname, :lname, :username, :password, :grade, :teacher_id, :classroom_id)
  end

  # Defines which Teacher and Classroom instance to use in model methods
  def SetTeacher
    @teacher = current_teacher
  end

  def SetClassroom
     @classroom = Classroom.find(params[:student][:classroom_id])
  end
end
