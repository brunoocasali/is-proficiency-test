class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.order(:name).page(params[:page])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: t('.notice')
    else
      render action: :new
    end
  end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: t('.notice')
    else
      render action: :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_url
  end

  def show; end

  def edit; end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :register_number, :status)
    end
end
