class Teacher::CoursesController < ApplicationController


  def create
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    @pool.save
    redirect_to root_path
  end

  def destroy
    @pool = Pool.find(params[:id])
    @pool.destroy
    redirect_to owner_bookings_path
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :price, :description, :max_people, :address, :url_photo)
  end
end
