class ClassroomsController < ApplicationController
  # Find Teacher by id params, before completing any actions
	before_action :SetTeacher

  def index
  	@classrooms = Classroom.all
  end

  # Only students with the same classroom_id as the show page will be displayed
  def show
  	@classroom = Classroom.find(params[:id])
  	@students = Student.where(classroom_id: params[:id])
  	@student = Student.new
  end

  # Classroom belongs to Teacher, and Teacher creates Students(partial) within Classroom 
  def new
  	@classroom = Classroom.new
  end

  # Create a new Classroom and then redirect to the classroom#show page if successful 
  def create
  	@classroom = @teacher.classrooms.build(classroom_params)
  	if @classroom.save
  		redirect_to teacher_classroom_path(@teacher, @classroom)
  	else
  		redirect_to :back
  	end
  end

  def edit
  	@classroom = @teacher.classrooms.find(params[:id])
  end

  # Update classroom attributes and redirect to the classroom#show page
  def update
   @classroom = @teacher.classrooms.find(params[:id])
  	if @classroom.update(classroom_params)
  		redirect_to teacher_classroom_path(@teacher, @classroom)
  	else
  		redirect_to :back
  	end
  end

  # Delete classroom(and students within-dependent destroy) and redirect to Teacher#Show page
  def destroy
  	if @classroom.destroy
  		redirect_to teacher_classrooms_path
  	else
  		redirect_to :back
  	end
  end

  private
  # Defines allowable parameters for the Classroom model
  def classroom_params
  	params.require(:classroom).permit(:name, :teacher_id, :student_id, :student_array)
  end

  # Defines which Teacher instance to use in model methods
  def SetTeacher
  	@teacher = Teacher.find(params[:teacher_id])
  end
end
