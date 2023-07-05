class Teacher::CoursesController < ApplicationController

    # skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :set_course, only: %i[ show ]

    def index
        @courses = Course.where(user_id: current_user)
    end

    def show
        @classes = @course.course_classes
    end

    def edit
    end

    def update

    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        @course.user = current_user
        @course.save!
        redirect_to teacher_courses_path
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to teacher_courses_path
    end

    private

    def set_course
        @course = Course.find(params[:id])
    end

    def course_params
        params.require(:course).permit(:name, :title, :description, :price, :content, :grade, :category)
    end
end
