class Teacher::CoursesController < ApplicationController

    # skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :set_course, only: %i[ show ]

    def index
        # @pools = Pool.where('address ILIKE ?', "%#{params[:query]}%")

        # if params[:query].present?
        #   @pools = Pool.where('address ILIKE ?', "%#{params[:query]}%")
        # else
        #   @pools = Pool.all
        # end
        # @courses = Course.all
        @courses = Course.where(user_id: current_user)
        # @classes = @course.course_classes
    end

    def show
        @classes = @course.course_classes
        # @course = Course.new
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
    # def new
    #     @classe = Classe.new
    #     @course = Course.find(params[:course_id])
    # end

    # def create
    #     @classe = Classe.new(classe_params)
    #     # @classe.user = current_user
    #     # @course = Course.find(params[:course_id])
    #     @classe.course = Course.find(params[:course_id])
    #     # @classes = @course.course_classes
    #     @classe.save!
    #     redirect_to teacher_courses_path
    # end
    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to teacher_courses_path
    end

    private

    def set_course
        @course = Course.find(params[:id])
        # @classes = @course.course_classes
    end

    def course_params
        params.require(:course).permit(:name, :title, :description, :price, :content, :grade)
    end
end
