class Teacher::ClassesController < ApplicationController
    def index
        # @enrollment = Enrollment.where(user_id: current_user)
    end

    def new
        @classe = Classe.new
        @course = Course.find(params[:course_id])
    end

    def create
        @classe = Classe.new(classe_params)
        # @classe.user = current_user
        # @course = Course.find(params[:course_id])
        @classe.course = Course.find(params[:course_id])
        # @classes = @course.course_classes
        @classe.save!
        redirect_to teacher_courses_path
    end

    def destroy
        Classe.find(params[:id]).destroy
        redirect_to teacher_courses_path
        # respond_to do |format|
        #   format.html { redirect_to booking_url, notice: "Booking was successfully destroyed." }
        #   format.json { head :no_content }
        # end
    end

    private

    def classe_params
        params.require(:classe).permit(:name, :class_date, :start_date, :end_date, :max_people)
    end
end
