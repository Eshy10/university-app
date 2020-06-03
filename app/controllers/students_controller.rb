class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = 'Your profile was successfully created'
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email)
  end
end
