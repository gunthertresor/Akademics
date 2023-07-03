class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # @courses = Course.all
    @reviews = Review.where(rating: 5) # filtrer si meme nom de cour
    # @reviews = Review.all # filtrer si meme nom de cour
    # @courses = Course.joins(:reviews) #.where(rating: 5)
    # .limit(10)
    # @teacher = User.find(1)
    # @courses.teacher = @teacher
    @teachers = User.where(status: 'teacher')
  end
end
