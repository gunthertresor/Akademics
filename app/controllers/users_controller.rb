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
    end


    private

    def set_my_profil
        @user = current_user
    end

    # def set_courses
    #     @course = Course.find(params[:id])
    # end
end
