class CoursesController < ApplicationController
    before_action :set_courses, only: [:show, :edit, :update, :destroy]

    def index
        @courses = Course.all
    end

    def show
    end

    private

    def set_courses
      @course = Course.find(params[:id])
    end
end
