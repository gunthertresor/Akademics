class EnrollmentsController < ApplicationController

    def index
        @enrollment = Enrollment.where(user_id: current_user)
    end

    def new
        @enrollment = Enrollment.new
    end

    def create
        @enrollment = Enrollment.new
        @enrollment.user = current_user
        @enrollment.classe = Classe.find(params[:class_id])
        @enrollment.save
        redirect_to courses_path
    end

    def update
        # @enrollment = Enrollment.new(enrollment_params)
    end


    def validate
        @enrollment = Enrollment.find(params[:id])
        @enrollment.validation = true
        @enrollment.save
        redirect_to teacher_enrollment_path
    end

    def reject
        Enrollment.find(params[:id]).destroy
        redirect_to teacher_enrollment_path
    end

    def destroy
        Enrollment.find(params[:id]).destroy
        redirect_to enrollments_path
        # respond_to do |format|
        #   format.html { redirect_to booking_url, notice: "Booking was successfully destroyed." }
        #   format.json { head :no_content }
        # end
    end

    private

    # def set_bookings
    #     @booking = Enrollment.find(params[:id])
    # end

    def enrollment_params
        params.require(:enrollment).permit(:enrollment_date)
        # params.require(:enrollment)
    end
end
