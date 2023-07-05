class ReviewsController < ApplicationController
    def index

    end

    def edit

    end

    def new
        @review = Review.new
        # @classe = Classe.new
        # @course = Course.find(params[:course_id])
    end

    def create
        @review = Review.new(review_params)
        @review.user = current_user
        @review.course = Course.find(params[:course_id])
        @review.save!
        redirect_to dashboard
        # redirect_to teacher_course_path(params[:course_id])
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to dashboard
    end

    private

    def review_params
        params.require(:review).permit(:rating, :comment)
    end
end
