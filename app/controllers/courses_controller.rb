class CoursesController < ApplicationController
  skip_before_action :require_user

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def show

  end


  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:success] = "You have successfully created a new Course"
      redirect_to courses_path
    else
      render 'new'
    end
  end

  private
  def course_params
    params.require(:course).permit(:short_name, :name, :description)
  end
end
