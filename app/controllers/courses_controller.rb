class CoursesController < ApplicationController

  def show
    @course = Course.find
  end

end
