class CoursesController < ApplicationController
    before_action :set_courses, only: [:show, :edit, :update, :destroy]

    def index
        @courses = Course.all
    end

    def show
    end

    def featured
        # @reviews = Review.find(params[:review_id])
        @courses = Course.where(rating: 5)
        # @courses = Course.where(rating: 5).joins(:classe)
        # @courses = Course.where(rating: 5).includes(:classe)
    end

    def best
        # @teachers = User.where(["status = ? and rating = ?", "teacher", 5])
        # @teachers = User.where(rating: 5)
    end

    private

    def set_courses
        @course = Course.find(params[:id])
    end
end
