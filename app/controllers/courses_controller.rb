class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.order(:name).page(params[:page])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
       redirect_to @course, notice: t('.notice')
    else
      render action: :new
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: t('.notice')
    else
      render action: :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_url
  end

  def show; end

  def edit; end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :description, :status)
    end
end
