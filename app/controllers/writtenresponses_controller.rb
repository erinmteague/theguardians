class WrittenresponsesController < ApplicationController

  def index
    @wrs = Writtenresponse.where(student_id: params[:id])
  end

  def new
  	@wr = Writtenresponse.new
  end

  def create
  	@wr = Writtenresponse.create(wr_params)
  	if @wr.save
  		redirect_to student_path(@student)
  	else
  		redirect_to :back
  	end
  end

  def show
  	@wr = Writtenresponse.find(params[:id])
  end

  private
  def wr_params
  	params.require(:writtenresponse).permit(:student_id, :lesson_id, :response)
  end
end
