class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "The student was created successfully"
      redirect_to root_path #student_path(@student)
    else
      render 'new'
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :email)
  end
end
