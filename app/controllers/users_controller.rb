class UsersController < ApplicationController
    before_action :set_my_profil, only: %i[ my_profil dashboard ]

    def index
        @teachers = User.where(status: 'teacher')
    end

    def show
        @teacher = User.find(params[:id])
    end

    def my_profil
    end

    def dashboard
        @courses = current_user.courses
        @review = Review.new
        # @enrollment = Enrollment.where(user_id: current_user)
        # @reviews = Review.where(user_id: current_user)


        # @course = Course.find(params[:id])
        # @classes = @course.course_classes
        # @classes_uniq = @classes.group_by { |classe| classe.name }

    end

    # def destroyreview
    #     Review.find(params[:id]).destroy
    #     redirect_to dashboard_path
    # end

    private

    def set_my_profil
        @user = current_user
    end

    # def set_courses
    #     @course = Course.find(params[:id])
    # end
end
