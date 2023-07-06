require "open-uri"
require "nokogiri"

class CoursesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :set_courses, only: [:show, :edit, :update, :destroy]

    def scrap
        url = "https://www.britannica.com/art/English-literature/Playwrights-after-Shakespeare"
        html_file = URI.open(url).read
        html_doc = Nokogiri::HTML.parse(html_file)
        html_doc.search(".standard-card-new__article-title").each do |element|
            # puts element.text.strip
            element.attribute("href").value
        end
    end


    def index
        @courses = Course.all
        @courses_uniq = Course.all.uniq { |course| course[:category] }
    end

    def show
        @enrollment = Enrollment.new
        @classes = @course.course_classes
        # @scrap = scrap()
        # @enrollment = Enrollment.where(user_id: current_user)
    end

    def featured
        # @reviews = Review.find(params[:review_id])
        @courses = Course.where(rating: 5)
        # @courses = Course.where(rating: 5).joins(:classe)
        # @courses = Course.where(rating: 5).includes(:classe)
    end

    def best
        # @teachers = User.where(["status = ? and rating = ?", "teacher", 5])
        @teachers = User.where(status: 'teacher')
    end

    private

    def set_courses
        @course = Course.find(params[:id])
    end
end
