class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  def index
    @classrooms = Classroom.page(params[:page])
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)

    if @classroom.save
      redirect_to @classroom, notice: t('.notice')
    else
      render action: :new

    end
  end

  def update
    if @classroom.update(classroom_params)
      redirect_to @classroom, notice: t('.notice')
    else
      render action: :edit
    end
  end

  def destroy
    @classroom.destroy
    redirect_to classrooms_url
  end

  def show; end

  def edit; end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classroom_params
      params.require(:classroom).permit(:student_id, :course_id, :entry_at)
    end
end
