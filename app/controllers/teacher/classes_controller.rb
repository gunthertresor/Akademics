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
        @classe.course = Course.find(params[:course_id])
        @classe.save!
        redirect_to teacher_course_path(params[:course_id])
    end

    def destroy
        Classe.find(params[:id]).destroy
        redirect_to teacher_course_path(params[:course_id])
        # respond_to do |format|
        #   format.html { redirect_to booking_url, notice: "Booking was successfully destroyed." }
        #   format.json { head :no_content }
        # end
    end

    private

    def classe_params
        params.require(:classe).permit(:name, :start_date, :end_date, :max_people)
    end
end
