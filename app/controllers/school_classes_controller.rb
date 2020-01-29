class StudentsController < ApplicationController

  def new
  end

  def create
    @schoolclass = Student.create(title: params[:title], room_number: params[:room_number])
    redirect_to student_path(@schoolclass)
  end


  def show
    # @student = Student.find(params[:id])
  end

  def edit
  end

  def update
  end

end
