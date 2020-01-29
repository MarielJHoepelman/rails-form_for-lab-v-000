class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end


  def show
  end

  def edit
  end

  def update
    @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def post_params
  end 

end
