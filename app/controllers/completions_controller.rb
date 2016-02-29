class CompletionsController < ApplicationController
  def create
  	@comp = Completion.new(completer_id: current_student.id, completed_id: params[:id])
    if @comp.save
    	redirect_to student_path(current_student)
    else
    	redirect_to :back
    end

  end
end
