class EnrollmentsController < ApplicationController

    def create
        # @enrollment = Pool.new(pool_params)
        # @pool.user = current_user
        # @pool.save
        # redirect_to root_path
    end

    def update
        @enrollment = Enrollment.new(enrollment_params)
    end
end
