class StudentsController < ApplicationController
skip_before_action :require_user, only: [:new, :create]
before_action :find_student, only: [:show, :edit, :update]

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
      redirect_to @student
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      flash[:notice] = 'Your Profile was succesfully updated'
      redirect_to @student
    else
      render :edit
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password, :password_confirmation)
  end

  def find_student
    @student = Student.find(params[:id])
  end

  def require_same_user
    if current_user != @student
      flash[:notice] = 'You can only edit your profile'
      redirect_to student_path(current_user)
    end
  end
end
