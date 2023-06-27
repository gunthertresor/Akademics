class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @courses = Course.all
    # @teacher = User.find(1)
    # @courses.teacher = @teacher

    @teacher = User.all
  end
end
