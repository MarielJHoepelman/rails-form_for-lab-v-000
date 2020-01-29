class SchoolClassesController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end


  def show
  end

  def edit
  end

  def update
    @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
    redirect_to school_class_path(@school_class)
  end

  private

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end
end
