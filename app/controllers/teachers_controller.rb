class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  # Display Current Teacher and owned Classrooms
  def show
    @teacher = current_teacher
    @classroom = Classroom.new
    @classrooms = Classroom.where(teacher_id: params[:id])
    render :layout => 'app2'
  end

  def new
  	@teacher = Teacher.new
  end

  # Create a new instance of a Teacher and if succesful redirect to the Teacher#Show page
  def create
  	@teacher = Teacher.create(teacher_params)
  	if @teacher.save
  		flash[:success] = "Success"
      session[:teacher_id] = @teacher.id
  		redirect_to teacher_path(@teacher)
  	else
  		flash[:fail] = "something went wrong"
  		redirect_to :back
  	end
  end

  def edit
    @teacher = Teacher.find(params[:id])
    render :layout => 'app2'
  end

  # Edit the attribute values associated with this Teacher and redirect to Teacher#Show page if successful
  def update
  	@teacher = Teacher.find(params[:id])
  	if @teacher.update_attributes(teacher_params)
  		flash[:success] = "Success"
  		redirect_to teacher_path(@teacher)
  	else
  		flash[:fail] = "something went wrong"
  		redirect_to :back
  	end
  end

  # Delete this instance of Teacher and reidrect to Home Page. Deleting a Teacher account will also destroy any associated Students and Classrooms
  def destroy
  	if @teacher.destroy
  		flash[:success] = "Success"
  		redirect_to root_path
  	else
  		flash[:fail] = "something went wrong"
  		redirect_to :back
  	end
  end

  private
  # Defines allowable parameters for the Teacher model
  def teacher_params
  	params.require(:teacher).permit(:fname, :lname, :email, :password, :school, :grade)
  end

  def app2
    render :layout => 'app2'
  end
end

