class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @schoolclass = SchoolClass.create(title: params[:title], room_number: params[:room_number])
    redirect_to school_class_path(@schoolclass)
  end


  def show
    # @student = Student.find(params[:id])
  end

  def edit
  end

  def update
  end

end
