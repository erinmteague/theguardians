class LessonsController < ApplicationController
  before_action :SetTeacher
  layout 'app3', except: [:show, :play, :index]

  # Lessons can only be managed by Admin
  def index
  	@lessons = Lesson.all
    if admin
      render :layout => 'application'
    else 
      render :layout => 'app3'
    end
  end

  def show
  	@lesson = Lesson.find(params[:id])
    render :layout => 'app4'
  end

  def play
    @lesson = Lesson.find(params[:id])
    render :layout => 'app4'
  end

  def new
  	@lesson = Lesson.new
  end

  # Create a new instance of Lesson and redirect to Lesson#Index
  def create
  	@lesson = Lesson.create(lesson_params)
  	if @lesson.save
  		redirect_to lessons_path
  	else
  		redirect_to :back
  	end
  end

  def edit
  	@lesson = Lesson.find(params[:id])
  end

  # Update the attributes of this Lesson instance and if successful redirect to Lesson Index
  def update
  	@lesson = Lesson.find(params[:id])
  	if @lesson.update(lesson_params)
  		redirect_to lessons_path
  	else
  		redirect_to :back
  	end
  end

  # Destroy this Lesson instance (and associated completions) and if successful redirect to Lesson#index
  def destroy
  	@lesson = Lesson.find(params[:id])
  	if @lesson.delete
  		redirect_to lessons_path
  	else
  		redirect_to :back
  	end
  end

  private
  # Defines allowable parameters for the Lesson model
  def lesson_params
  	params.require(:lesson).permit(:title, :body, :common_core)
  end

  def SetTeacher
    @teacher = current_teacher
  end
end
