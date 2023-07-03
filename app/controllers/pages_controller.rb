class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

#   def muniq(ary)
#     ary.uniq
#   end

  def home
    # @reviews = Review.all
    @reviews = Review.where(rating: 5).uniq { |review| review[:course_id] }
    # @counts = {}
    # puts @reviews_count = Review.where(rating: 5).each_with_object(Hash.new(0)) { |name, hash| hash[name] += 1 }
    # @reviews = Review.where(rating: 5)
    # @reviews = mithun_sasidharan(@reviews2.course.name)
    # @reviews.map{ |review| muniq(review.course.name) }
    # .limit(10)
    # @teacher = User.find(1)
    # @courses.teacher = @teacher
    @teachers = User.where(status: 'teacher')
  end
end
